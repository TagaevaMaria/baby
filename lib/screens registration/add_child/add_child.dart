import 'package:flutter/material.dart';
import '../../library/scaffold_manager/scaffold_manager.dart';
import '../../ui/theme/style_text_filed.dart';
import 'add_child_model.dart';

///класс, который хронит модель.
class AddChild extends StatefulWidget {
  const AddChild({super.key});

  @override
  State<AddChild> createState() => _AddChildState();
}

class _AddChildState extends State<AddChild> {
  final _model = AddChildModel();

  @override
  Widget build(BuildContext context) {
    return AddChildModelProvider(model: _model, child: const AddChildScreen());
  }
}

/// вертска экрана.
class AddChildScreen extends StatelessWidget {
  const AddChildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _model = AddChildModelProvider.watch(context)?.model;
    return ScaffoldManager(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(165, 218, 249, 1),
          title: const Center(
            child: Text(
              'Добавить ребёнка',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 25),
              MyText(text: 'Имя малыша'),
              MyTextField(
                onChanged: (value) => _model?.nameBaby = value,
                onEditingComplete: () => _model?.saveChild(context),
              ),
              MyText(text: 'Дата рождения'),
              MyTextField(
                  onEditingComplete: () => _model?.saveChild(context),
                  onChanged: (value) => _model?.dataBaby = value),
              MyText(text: 'Пол'),
              MyTextField(
                  onEditingComplete: () => _model?.saveChild(context),
                  onChanged: (value) => _model?.genderBaby = value),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.photo_camera)),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.small(
          backgroundColor: Colors.white,
          onPressed: () => _model?.saveChild(context),
          child: const Icon(Icons.check),
        ),
      ),
    );
  }
}
