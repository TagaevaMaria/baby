import 'package:baby/domin/entity/notes.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class ShowNotesVM extends ChangeNotifier {
  late final Future<Box<Note>> _nowNotesBox;
  Note? _notes;

  Note? get notes => _notes;

  ShowNotesVM() {
    _setup();
  }

  void _setup() {
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(NoteAdapter());
    }
    _nowNotesBox = Hive.openBox<Note>('now_notes_box');
    // _loadingNotes();
  }

  void _loadingNotes() async {}
}
