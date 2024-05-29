import 'package:flutter/material.dart';
import '../ui/background_widget.dart';
import '../ui/widget/widgets_main_screen.dart';
import 'main_screen_model.dart';

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
    final _model = MainScreenModelProvider.watch(context)?.model;
    return BackgroundWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Center(child: Text('Имя ребенка как то надо получить')),
          backgroundColor: const Color.fromRGBO(165, 218, 249, 1),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              rowWidgets(
                title: 'Достижения',
                titleTwo: 'Запись к врачам',
                titleThree: 'Заметки',
                image: 'image/achievements.png',
                imageTwo: 'image/doctors.png',
                imageThree: 'image/notes.png',
                size: 80.0,
                padding: const EdgeInsets.only(
                    top: 50, bottom: 20, left: 10, right: 10),
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                onPressed: () => _model?.screenAchievements(context),
                onPressedTwo: () => _model?.screenDoctors(context),
                onPressedThree: () => _model?.screenNotes(context),
              ),
              rowWidgets(
                title: 'Фотографии',
                titleTwo: 'Аллергии',
                titleThree: 'Рост и вес',
                image: 'image/foto.png',
                imageTwo: 'image/allergy.png',
                imageThree: 'image/height_weight.png',
                size: 80.0,
                padding: const EdgeInsets.only(
                    top: 50, bottom: 20, left: 10, right: 10),
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                onPressed: () => _model?.screenPhoto(context),
                onPressedTwo: () => _model?.screenAllergy(context),
                onPressedThree: () => _model?.screenHeightWeight(context),
              ),
              rowWidgets(
                title: 'Прививки',
                titleTwo: 'Cон',
                titleThree: 'Прикорм',
                image: 'image/vaccinations.png',
                imageTwo: 'image/night.png',
                imageThree: 'image/eat.png',
                size: 80.0,
                padding: const EdgeInsets.only(
                    top: 50, bottom: 20, left: 10, right: 10),
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                onPressed: () {},
                onPressedTwo: () {},
                onPressedThree: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
