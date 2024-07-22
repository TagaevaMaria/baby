import 'package:baby/library/scaffold_manager/scaffold_manager.dart';
import 'package:baby/ui/theme/style_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_child_model.dart';

///класс, который хронит модель.
class AddChildDI extends StatelessWidget {
  const AddChildDI({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => AddChildVM(),
        child: const AddChildScreen(),
      );
}

/// вертска экрана.
class AddChildScreen extends StatelessWidget {
  const AddChildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final modelRead = context.read<AddChildVM>();
    final modelWatch = context.watch<AddChildVM>();
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
                onChanged: (value) => modelWatch.nameBaby = value,
                onEditingComplete: () => modelWatch.saveChild(context),
              ),
              MyText(text: 'Дата рождения'),
              MyTextField(
                  onEditingComplete: () => modelWatch.saveChild(context),
                  onChanged: (value) => modelWatch.dataBaby = value),
              MyText(text: 'Пол'),
              MyTextField(
                  onEditingComplete: () => modelWatch.saveChild(context),
                  onChanged: (value) => modelWatch.genderBaby = value),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.photo_camera)),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.small(
          backgroundColor: Colors.white,
          onPressed: () => modelRead.saveChild(context),
          child: const Icon(Icons.check),
        ),
      ),
    );
  }
}




