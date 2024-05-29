import 'package:baby/domin/entity/notes.dart';
import 'package:baby/pages//notes/show_notes_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../ui/background_widget.dart';

class ShowNotesDI extends StatelessWidget {
  const ShowNotesDI({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {

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
    final note = ModalRoute.of(context)?.settings.arguments as Note;
    final model = context.watch<ShowNotesVM>();

    return BackgroundWidget(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Заметка'),
        ),
        backgroundColor: Colors.transparent,
        body: ListTile(
          title: Text(note.nowNotes),
        ),
      ),
    );
  }
}
