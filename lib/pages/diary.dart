import 'dart:math';

import 'package:diary_ai/repo/firebase_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DiaryPage extends ConsumerStatefulWidget {
  const DiaryPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DiaryWidgetState();
}

class _DiaryWidgetState extends ConsumerState<DiaryPage> {
  @override
  Widget build(BuildContext context) {
    final diaryListAsync = ref.watch(diaryListProvider);

    return Scaffold(
      body: diaryListAsync.when(
        data:
            (diaryList) =>
                diaryList.isNotEmpty
                    ? ListView.builder(
                      itemCount: diaryList.length,
                      itemBuilder: (contex, index) {
                        final diary = diaryList[index];
                        return Dismissible(
                          key: Key(diary.id),
                          background: Container(color: Colors.red),
                          //onDismissed: (_) => ref.read(completeTodoProvider)(todo.id),
                          confirmDismiss:
                              (_) async => await showDialog(
                                context: context,
                                builder:
                                    (context) => AlertDialog(
                                      title: const Text("Remove this Todo?"),
                                      actions: [
                                        TextButton(
                                          onPressed:
                                              () =>
                                                  Navigator.pop(context, false),
                                          child: const Text("Cancel"),
                                        ),
                                        TextButton(
                                          onPressed:
                                              () =>
                                                  Navigator.pop(context, true),
                                          child: const Text("Remove"),
                                        ),
                                      ],
                                    ),
                              ),
                          child: Card(
                            color: getRandomLightColor(),
                            child: ListTile(
                              title: Text(diary.diaryTitle),
                              subtitle: Text(diary.diaryDescription),
                            ),
                          ),
                        );
                      },
                    )
                    : const Center(child: Text("Empty")),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text("Error: $error")),
      ),
    );
  }
}

Color getRandomLightColor() {
  final Random random = Random();
  return Color.fromARGB(
    255,
    200 + random.nextInt(56), // R (200-255)
    200 + random.nextInt(56), // G (200-255)
    200 + random.nextInt(56), // B (200-255)
  );
}

String formatDateTime(DateTime dateTime) {
  return "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} "
      "${(dateTime.hour % 12 == 0 ? 12 : dateTime.hour % 12)}:${dateTime.minute.toString().padLeft(2, '0')} "
      "${dateTime.hour >= 12 ? 'PM' : 'AM'}";
}
