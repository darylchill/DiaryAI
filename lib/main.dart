import 'package:diary_ai/service/alarm.dart';
import 'package:diary_ai/service/permissions.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

import 'firebase_options.dart';
import 'pages/widget/bottomNavigation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await AlarmUtil.initialize();
  runApp(
      ProviderScope(child: const DiaryApp()),
  );

  await PermissionUtil.requestPermissions([
    Permission.notification,Permission.scheduleExactAlarm
  ]);
}

class DiaryApp  extends StatelessWidget{
  const DiaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: BottomNavigationBarDiary(),
    );
  }

}