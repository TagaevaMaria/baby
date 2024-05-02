import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../domin/entity/notes.dart';



class NotesFormWidgetModel {
  var notesName = '';

  void saveNotes(BuildContext context) async {
    if (notesName.isEmpty) return;
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(NoteAdapter());
    }
    final box = await Hive.openBox<Note>('notes_box');
    final notes = Note(name: notesName);
    box.add(notes);
    Navigator.of(context).pop(true);
  }
}

class NotesFormWidgetModelProvider extends InheritedWidget {
  final NotesFormWidgetModel model;

  const NotesFormWidgetModelProvider(
      {Key? key, required Widget child, required this.model})
      : super(key: key, child: child);

  static NotesFormWidgetModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NotesFormWidgetModelProvider>();
  }

  static NotesFormWidgetModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<NotesFormWidgetModelProvider>()
        ?.widget;
    return widget is NotesFormWidgetModelProvider ? widget : null;
  }

  @override
  bool updateShouldNotify(NotesFormWidgetModelProvider oldWidget) {
    return true;
  }
}
