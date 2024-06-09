import 'package:flutter/material.dart';
import '../../../library/scaffold_manager/scaffold_manager.dart';
import '../../navigation/main_navigation.dart';

class ScreenPhotoBody extends StatelessWidget {
  const ScreenPhotoBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> _buttons = [
      'assets/image_photo_age/one.png',
      'assets/image_photo_age/two.png',
      'assets/image_photo_age/three.png',
      'assets/image_photo_age/four.png',
      'assets/image_photo_age/five.png',
      'assets/image_photo_age/six.png',
      'assets/image_photo_age/seven.png',
      'assets/image_photo_age/eight.png',
      'assets/image_photo_age/nine.png',
      'assets/image_photo_age/ten.png',
      'assets/image_photo_age/eleven.png',
      'assets/image_photo_age/twelve.png',
    ];
    return ScaffoldManager(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text(
              'Альбомы по месяцам',
            ),
            backgroundColor: const Color.fromRGBO(165, 218, 249, 1),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),

            /// Строитель.
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
              ),
              itemCount: _buttons.length,
              itemBuilder: (context, index) {
                return TextButton(
                  onPressed: () => Navigator.of(context).pushNamed(
                      MainNavigationRouteNames.photoByMons,
                      arguments: (index + 1)),
                  child: Image.asset(
                    _buttons[index],
                    width: 100,
                    height: 100,
                  ),
                );
              },
            ),
          )),
    );
  }
}
