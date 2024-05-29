import 'package:baby/domin/entity/notes.dart';
import 'package:baby/ui/navigation/main_navigation.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class NotesScreenVM extends ChangeNotifier {
  var _newNotes = <Note>[];

  List<Note> get newNotes => _newNotes.toList();

  NotesScreenVM() {
    _setup();
  }

  ///навигация

  void createNewNotes(BuildContext context) {
    Navigator.pushNamed(context, MainNavigationRouteNames.newNoteScreenDI);
  }

  void showNotes(BuildContext context, Note note) async {
   Navigator.of(context).pushNamed(MainNavigationRouteNames.showNotesDI, arguments: note);
  }

  void _setup() async {
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(NoteAdapter());
    }
    final box = await Hive.openBox<Note>('now_notes');
    _newNotes = box.values.toList();
    notifyListeners();
    box.listenable().addListener(() {
      _newNotes = box.values.toList();
      notifyListeners();
    });
  }

  ///удаление заметки
  void deleteNotes(int notesIndex) async {
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(NoteAdapter());
    }
    final box = await Hive.openBox<Note>('now_notes');
    await box.deleteAt(notesIndex);
  }
}
