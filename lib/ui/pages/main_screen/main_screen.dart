import 'package:baby/ui/pages/main_screen/main_screen_model.dart';
import 'package:baby/ui/resources/assets_path.dart';
import 'package:baby/ui/widget/widgets_main_screen.dart';
import 'package:flutter/material.dart';
import '../../../library/scaffold_manager/scaffold_manager.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _model = MainScreenModel();

  @override
  Widget build(BuildContext context) {
    return MainScreenModelProvider(
      model: _model,
      child: const MainScreenBody(),
    );
  }
}

class MainScreenBody extends StatelessWidget {
  const MainScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final _model = MainScreenModelProvider.watch(context)?.model;
    return ScaffoldManager(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title:
                const Center(child: Text('Имя ребенка как то надо получить')),
            backgroundColor: const Color.fromRGBO(165, 218, 249, 1),
          ),
          body: Column(
            children: [
              rowWidgets(
                title: 'Достижения',
                titleTwo: 'Врачи',
                titleThree: 'Заметки',
                image: AssetsPath.achievements,
                imageTwo: AssetsPath.doctors,
                imageThree: AssetsPath.notes,
                onPressed: () => _model?.screenAchievements(context),
                onPressedTwo: () => _model?.screenDoctors(context),
                onPressedThree: () => _model?.screenNotes(context),
                height: MediaQuery.of(context).size.height / 7,
                width: MediaQuery.of(context).size.width / 4,
              ),
              rowWidgets(
                  title: 'Фотографии',
                  titleTwo: 'Аллергии',
                  titleThree: 'Рост и вес',
                  image: AssetsPath.foto,
                  imageTwo: AssetsPath.allergy,
                  imageThree: AssetsPath.heightWeight,
                  onPressed: () => _model?.screenPhoto(context),
                  onPressedTwo: () => _model?.screenAllergy(context),
                  onPressedThree: () => _model?.screenHeightWeight(context),
                  height: MediaQuery.of(context).size.height / 7,
                  width: MediaQuery.of(context).size.width / 4),
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
                  height: MediaQuery.of(context).size.height / 7,
                  width: MediaQuery.of(context).size.width / 4),
            ],
          )),
    );
  }
}
