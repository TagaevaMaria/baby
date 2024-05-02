import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../domin/entity/notes.dart';



class NotesWidgetModel extends ChangeNotifier {
  List<Note> _listNotes = [];
  List<Note> get listNotes => _listNotes;

  NotesWidgetModel() {
    setup();
  }

  void showForm(BuildContext context) async {
    await Navigator.of(context).pushNamed('/notes_widget_form').then((value) {
      if (value == true) setup();
    });
  }

  void deleteNotes(int notesIndex) async {
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(NoteAdapter());
    }
    final box = await Hive.openBox<Note>('notes_box');
    await box.deleteAt(notesIndex);
  }

  void setup() async {
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(NoteAdapter());
    }
    final box = await Hive.openBox<Note>('notes_box');
    _listNotes = box.values.toList();
    notifyListeners();
  }

 }

class NotesWidgetModelProvider extends InheritedNotifier {
  final NotesWidgetModel model;

   NotesWidgetModelProvider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(key: key, child: child, notifier: model);

  static NotesWidgetModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NotesWidgetModelProvider>();
  }

  static NotesWidgetModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<NotesWidgetModelProvider>()
        ?.widget;
    return widget is NotesWidgetModelProvider ? widget : null;

  }



  
}








