import 'package:baby/ui/pages/main_screen/main_screen_model.dart';
import 'package:baby/ui/resources/assets_path.dart';
import 'package:baby/ui/widget/widgets_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../library/scaffold_manager/scaffold_manager.dart';



class MainScreenDI extends StatelessWidget {
  final MainScreenModelVM model;
  const MainScreenDI({super.key, required this.model});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => MainScreenModelVM(),
        child: const MainScreen(),
      );
}

class MainScreen extends StatelessWidget {

  const MainScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final modelRead = context.read<MainScreenModelVM>();
    final modelWatch = context.watch<MainScreenModelVM>();
    final mediaQuery = MediaQuery.of(context).size;
    return ScaffoldManager(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(actions: [
            TextButton(
                onPressed: () => modelRead.screenAddChild(context),
                child: const Text('Добавитъ ребёнка')),
          ]),
          body: Column(
            children: [
              rowWidgets(
                title: 'Достижения',
                titleTwo: 'Врачи',
                titleThree: 'Заметки',
                image: AssetsPath.achievements,
                imageTwo: AssetsPath.doctors,
                imageThree: AssetsPath.notes,
                onPressed: () => modelRead.screenAchievements(context),
                onPressedTwo: () => modelRead.screenDoctors(context),
                onPressedThree: () => modelRead.screenNotes(context),
                height: mediaQuery.height / 7,
                width: mediaQuery.width / 4,
              ),
              rowWidgets(
                  title: 'Фотографии',
                  titleTwo: 'Аллергии',
                  titleThree: 'Рост и вес',
                  image: AssetsPath.foto,
                  imageTwo: AssetsPath.allergy,
                  imageThree: AssetsPath.heightWeight,
                  onPressed: () => modelRead.screenPhoto(context),
                  onPressedTwo: () => modelRead.screenAllergy(context),
                  onPressedThree: () => modelRead.screenHeightWeight(context),
                  height: mediaQuery.height / 7,
                  width: mediaQuery.width / 4),
              rowWidgets(
                  title: 'Прививки',
                  titleTwo: 'Cон',
                  titleThree: 'Прикорм',
                  image: AssetsPath.vaccinations,
                  imageTwo: AssetsPath.night,
                  imageThree: AssetsPath.eat,
                  onPressed: () {},
                  onPressedTwo: () {},
                  onPressedThree: () {},
                  height: mediaQuery.height / 7,
                  width: mediaQuery.width / 4),
            ],
          )),
    );
  }
}
