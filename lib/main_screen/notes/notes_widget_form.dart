import 'package:flutter/material.dart';

import 'notes_widget_form_model.dart';

/// хранит модель и тело экрана
class NotesWidgetForm extends StatefulWidget {
  const NotesWidgetForm({Key? key}) : super(key: key);

  @override
  _NotesWidgetFormState createState() => _NotesWidgetFormState();
}

class _NotesWidgetFormState extends State<NotesWidgetForm> {
  final _model = NotesFormWidgetModel();
  @override
  Widget build(BuildContext context) {
    return NotesFormWidgetModelProvider(
        model: _model, child: const NotesWidgetFormBody());
  }
}

class NotesWidgetFormBody extends StatelessWidget {
  const NotesWidgetFormBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(165, 218, 249, 1),
      ),
      body:  Center(
        child: _NotesNameWidget(),
      ),
    );
  }
}

class _NotesNameWidget extends StatelessWidget {
   _NotesNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = NotesFormWidgetModelProvider.read(context)?.model;
    return AlertDialog(
      title: const Text('Добавить заметку'),
      content: TextField(
        autofocus: true,
        onChanged: (value) => model?.notesName = value,
        onEditingComplete: () => model?.saveNotes(context),

        ///когда будем что-то вводить оно будет сохроняться.
      ),
      actions: [
        TextButton(
            onPressed: () => model?.saveNotes(context), child: const Text('ok'))
      ],
    );
  }





}





