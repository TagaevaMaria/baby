import 'package:baby/ui/pages/profile_child/screen_profile_child_model.dart';
import 'package:flutter/material.dart';

import '../../background_widget.dart';





class ScreenProfileChild extends StatefulWidget {
  const ScreenProfileChild({super.key});

  @override
  State<ScreenProfileChild> createState() => _ScreenProfileChildState();
}

class _ScreenProfileChildState extends State<ScreenProfileChild> {
  final _model = ScreenProfileChildModel();

  @override
  Widget build(BuildContext context) {
    return ScreenProfileChildModelProvider(
        model: ScreenProfileChildModel(),
        child: const ScreenProfileChildBody());
  }
}

class ScreenProfileChildBody extends StatelessWidget {
  const ScreenProfileChildBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(165, 218, 249, 1),
            title: const Center(
              child: Text(
                'Дети',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          body: ListTileChilds()),
    );
  }
}

class ListTileChilds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
            leading: const CircleAvatar(
              child: Text('фото ребенка'),
              backgroundColor: Colors.red, // Цвет аватара
            ),
            title: const Text('Имя ребенка'),
            subtitle: const Text('Возраст ребенка'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {}),
      ],
    );
  }
}
