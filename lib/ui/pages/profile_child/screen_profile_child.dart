import 'package:baby/ui/pages/profile_child/screen_profile_child_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../library/scaffold_manager/scaffold_manager.dart';

class ScreenProfileChildDI extends StatelessWidget {
   const ScreenProfileChildDI({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (BuildContext context) => ScreenProfileChildVM(),
    child: const ScreenProfileChild());
}

class ScreenProfileChild extends StatelessWidget {
  const ScreenProfileChild({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldManager(
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
              backgroundColor: Colors.red,
              child: Text('фото ребенка'), // Цвет аватара
            ),
            title: const Text('Имя ребенка'),
            subtitle: const Text('Возраст ребенка'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {}),
      ],
    );
  }
}
