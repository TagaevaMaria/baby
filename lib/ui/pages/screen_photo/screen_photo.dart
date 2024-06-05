import 'package:flutter/material.dart';
import '../../background_widget.dart';
import '../../navigation/main_navigation.dart';



class ScreenPhotoBody extends StatelessWidget {
  const ScreenPhotoBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> _buttons = [
      'image/image_fhoto_age/one.png',
      'image/image_fhoto_age/two.png',
      'image/image_fhoto_age/three.png',
      'image/image_fhoto_age/four.png',
      'image/image_fhoto_age/five.png',
      'image/image_fhoto_age/six.png',
      'image/image_fhoto_age/seven.png',
      'image/image_fhoto_age/eight.png',
      'image/image_fhoto_age/nine.png',
      'image/image_fhoto_age/ten.png',
      'image/image_fhoto_age/eleven.png',
      'image/image_fhoto_age/twelve.png',
    ];
    return  BackgroundWidget(
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
                  onPressed: () => Navigator.of(context)
                      .pushNamed(MainNavigationRouteNames.photoByMons, arguments: (index + 1)),
                  child: Image.asset(_buttons[index],
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




