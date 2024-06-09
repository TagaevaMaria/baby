import 'package:flutter/material.dart';


/// Виджет кнопки выбора действия на главном экране.
Widget circleButtonWidget({
  required String title,
  required String image,
  required Function() onPressed,
  required double height,
  required double width,

}) {
  return Column(
    children: [
      TextButton(
        onPressed: onPressed,
        child: Image(
          height: height,
          width:width,
          image: AssetImage(image),
        ),
      ),
      Text(
        title,
        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
      )
    ],
  );
}

/// Ряд виджетов.
Widget rowWidgets({
  required String title,
  required String titleTwo,
  required String titleThree,
  required String image,
  required String imageTwo,
  required String imageThree,
  required Function() onPressed,
  required Function() onPressedTwo,
  required Function() onPressedThree,
  required double height,
  required double width,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
      children: [
        circleButtonWidget(
          title: title,
          image: image,
          onPressed: onPressed,
          height: height, width: width,
        ),
        circleButtonWidget(
          title: titleTwo,
          image: imageTwo,
          onPressed: onPressedTwo,
          height: height, width: width,
        ),
        circleButtonWidget(
          title: titleThree,
          image: imageThree,
          onPressed: onPressedThree,
          height: height, width: width,
        ),
      ],
    ),
  );
}
