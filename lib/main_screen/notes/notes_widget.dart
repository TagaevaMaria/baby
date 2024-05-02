
import 'package:flutter/material.dart';
import 'notes_widget_model.dart';

class NotesWidget extends StatefulWidget {
  const NotesWidget({Key? key}) : super(key: key);

  @override
  State<NotesWidget> createState() => _NotesWidgetState();
}

class _NotesWidgetState extends State<NotesWidget> {
  final _model = NotesWidgetModel();

  @override
  Widget build(BuildContext context) {
    return NotesWidgetModelProvider(
        model: _model, child: const NotesWidgetBody());
  }
}

class NotesWidgetBody extends StatelessWidget {
  const NotesWidgetBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(165, 218, 249, 1),
        title: const Center(child: Text('Заметки')),
      ),
      body: const _NotesList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            NotesWidgetModelProvider.read(context)?.model.showForm(context),
        child: const Icon(Icons.add),
      ),

    );
  }
}

/// лист заметок
class _NotesList extends StatelessWidget {
  const _NotesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = NotesWidgetModelProvider.watch(context)?.model;
    final List _listNotes =
        (NotesWidgetModelProvider.watch(context)?.model.listNotes)!;
    return ListView.builder(
      itemCount: _listNotes.length,
      itemBuilder: (BuildContext context, int index) {
        final _name = _listNotes[index].nameBaby;
        return Dismissible(
          key: Key(_name),
          child: Card(
            child: ListTile(
              title: Text(_name),
            ),
          ),
          onDismissed: (DismissDirection direction) {
            model?.deleteNotes(index);
          },
        );
      },
    );
  }
}

