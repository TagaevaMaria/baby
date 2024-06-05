import 'package:flutter/widgets.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../domin/entity/notes.dart';


class NewNotesScreenVM extends ChangeNotifier {
  void saveNotes(BuildContext context) async {
    if (newNotes.isEmpty) return;
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(NoteAdapter());
    }
    final box = await Hive.openBox<Note>('now_notes');
    final nowNotes = Note(nowNotes: newNotes);
    await box.add(nowNotes);
    Navigator.of(context).pop();
  }

  String newNotes = '';
}
