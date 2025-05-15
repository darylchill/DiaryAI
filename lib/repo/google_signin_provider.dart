import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../service/databaseHelper.dart';
import 'db_provider.dart';
import 'firebase_provider.dart';

final googleSignInProvider = Provider((ref) => GoogleSignIn());

final userProvider = StateProvider<String?>((ref) => null);

Future<void> signIn(WidgetRef ref) async {
  final googleSignIn = ref.read(googleSignInProvider);
  final user = await googleSignIn.signIn();
  if (user != null) {
    final databaseHelper = DatabaseHelper();
    await databaseHelper.saveUserEmail(user.email);  // 🔥 Save email to SQLite
    debugPrint("✅ Saved email to SQLite: ${user.email}");

    ref.read(userProvider.notifier).state = user.email;
  }
}

Future<void> signOut(WidgetRef ref) async {
  final googleSignIn = ref.read(googleSignInProvider);
  await googleSignIn.signOut();

  final dbHelper = ref.read(databaseHelperProvider);
  await dbHelper.clearUserEmail(); // Clear SQLite
  ref.refresh(userEmailProvider); // Refresh email provider
}
