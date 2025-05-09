import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/models.dart';
import '../service/databaseHelper.dart';
import 'google_signin_provider.dart';

final firestoreProvider = Provider((ref)=> FirebaseFirestore.instance);

final userEmailProvider = FutureProvider<String?>((ref) async {
  final dbHelper = DatabaseHelper();
  final email = await dbHelper.getUserEmail();

  debugPrint("🟡 Fetching email from SQLite...");
  debugPrint("🟢 Fetched email from SQLite: $email");

  return email; // This should return a valid email, not null.
});




//Diary Creator to Firebase
final diaryListProvider = StreamProvider<List<DiaryModel>>((ref){
  final user = ref.watch(userProvider);
  final firestore = ref.watch(firestoreProvider);

if (user == null) return Stream.value([]); // Return empty list if not signed in

return firestore
    .collection(user)
    .doc('diary')
    .collection('list')
    .snapshots()
    .asyncMap((snapshot) async {
List<DiaryModel> firebaseTodos =
snapshot.docs.map((doc) => DiaryModel.fromJson(doc.data())).toList();

// Save to SQLite for offline support
for (var todo in firebaseTodos) {
await DatabaseHelper.insertTodo(todo);
}

// Load local todos if Firebase is empty
if (firebaseTodos.isEmpty) {
return await DatabaseHelper.getTodos();
}

return firebaseTodos;
});
});