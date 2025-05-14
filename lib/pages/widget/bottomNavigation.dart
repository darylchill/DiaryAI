import 'package:diary_ai/pages/diary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../repo/google_signin_provider.dart';
import '../../service/databaseHelper.dart';
import '../account.dart';

class BottomNavigationBarDiary extends ConsumerStatefulWidget {
  const BottomNavigationBarDiary({super.key});

  @override
  ConsumerState<BottomNavigationBarDiary> createState() =>
      _BottomNavigationBarTodoState();
}

class _BottomNavigationBarTodoState
    extends ConsumerState<BottomNavigationBarDiary> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onNavItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInBack,
    );
  }

  Future<void> restoreSession(WidgetRef ref) async {
    final databaseHelper = DatabaseHelper();
    String? savedEmail = await databaseHelper.getUserEmail();

    if (savedEmail != null) {
      ref.read(userProvider.notifier).state = savedEmail; // Save email only
    }
  }

  @override
  void initState() {
    super.initState();
    restoreSession(ref); // ✅ Restore saved session on app launch
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:
            user == null
                ? const Text('Sign in to write your memories!')
                : Text('Diary List'),
        actions: [
          user == null
              ? IconButton(
                icon: Icon(Icons.login),
                onPressed: () => signIn(ref),
              )
              : IconButton(
                icon: Icon(Icons.logout),
                onPressed: () => signOut(ref),
              ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [DiaryPage(), AccountPage()],
      ),
      bottomNavigationBar:
          user == null
              ? Center(
                child: Column(
                  children: [
                    Wrap(
                      children: [
                        Image(image: AssetImage('assets/diary.gif')),
                        Center(
                          child: FilledButton(
                            onPressed: () => signIn(ref),
                            child: Text("Sign in with Google"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
              : BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.note_alt),
                    label: 'Diary',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle),
                    label: 'Account',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.blue[800],
                onTap: _onNavItemTapped,
              ),
    );
  }
}
