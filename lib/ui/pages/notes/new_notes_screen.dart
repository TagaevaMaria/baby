import 'package:baby/library/scaffold_manager/scaffold_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'new_notes_screen_model.dart';


class NewNoteScreenDI extends StatelessWidget {
  const NewNoteScreenDI({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NewNotesScreenVM(), child: const NewNotesScreen());
  }
}

class NewNotesScreen extends StatelessWidget {
  const NewNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _modelRead = context.read<NewNotesScreenVM>();
    final _modelWatch = context.watch<NewNotesScreenVM>();
    return ScaffoldManager(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Заметки'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () => _modelRead.saveNotes(context),
              child: const Text('Готово', style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
      body:  Expanded(
        child: TextField(
          decoration:  InputDecoration(
          ),
          scrollPadding: EdgeInsets.all(20.0),
          autofocus: true,
          maxLines: 20,
          onEditingComplete: () => _modelRead.saveNotes(context),
          onChanged: (value) => _modelRead.newNotes=value,
        ),
      ),

      backgroundColor: Colors.transparent,
    ));
  }
}
