import 'package:caretutors_task/features/note/presentation/controllers/note_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NoteController>();
    final titleCtrl = TextEditingController();
    final descCtrl = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Add Note')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: titleCtrl, decoration: const InputDecoration(labelText: 'Title')),
            TextField(controller: descCtrl, decoration: const InputDecoration(labelText: 'Description')),
            ElevatedButton(
              onPressed: () async {
                await controller.addNote(titleCtrl.text, descCtrl.text);
                context.go('/home');
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}