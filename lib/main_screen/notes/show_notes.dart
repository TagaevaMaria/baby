import 'package:baby/main_screen/notes/show_notes_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../ui/background_widget.dart';

class ShowNotesDI extends StatelessWidget {
  const ShowNotesDI({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShowNotesVM(),
      child: const ShowNotes(),
    );
  }
}

class ShowNotes extends StatelessWidget {
  const ShowNotes({super.key});

  @override
  Widget build(BuildContext context) {
    final _notesKey = ModalRoute.of(context)!.settings.arguments as int;
    return BackgroundWidget(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Заметки'),
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
