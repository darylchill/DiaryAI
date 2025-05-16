import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/models.dart';
import '../service/databaseHelper.dart';
import 'google_signin_provider.dart';

final firestoreProvider = Provider((ref) => FirebaseFirestore.instance);

final userEmailProvider = FutureProvider<String?>((ref) async {
  final dbHelper = DatabaseHelper();
  final email = await dbHelper.getUserEmail();

  debugPrint("🟡 Fetching email from SQLite...");
  debugPrint("🟢 Fetched email from SQLite: $email");

  return email; // This should return a valid email, not null.
});

//Diary List to Firebase
final diaryListProvider = StreamProvider<List<DiaryModel>>((ref) {
  final user = ref.watch(userProvider);
  final firestore = ref.watch(firestoreProvider);

  if (user == null) {
    return Stream.value([]); // Return empty list if not signed in
  }
  debugPrint("🟡 UserID from FireStore User... ${user.toString()}");

  String userID = user.toString();
  return firestore
      .collection('user')
      .doc(userID)
      .collection('diaryEntries')
      .snapshots()
      .asyncMap((snapshot) async {





        List<DiaryModel> firebaseDiary =
            snapshot.docs
                .map((doc)
                  => DiaryModel(
                      id: doc.id,
                      dateTime: doc.data()['dateTime'].toDate(),
                      diaryTitle: doc.data()['diaryTitle'],
                      diaryDescription: doc.data()['diaryDescription'])
            )
                .toList();


        debugPrint("🟡 Diary from FireStore... ${firebaseDiary.length}");


        // Save to SQLite for offline support
        for (var diary in firebaseDiary) {
          await DatabaseHelper.insertDiary(diary);
        }

        // Load local diary if Firebase is empty
        if (firebaseDiary.isEmpty) {
          return await DatabaseHelper.getDiaries();
        }

        return firebaseDiary;
      });
});
