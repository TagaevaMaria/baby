import 'package:flutter/material.dart';

/// Виджет кнопки выбора действия.
Widget circleButtonWidget({
  required String title,
  required String image,
  required double size,
  required EdgeInsets padding,
  required Function() onPressed,
}) {
  return Column(
    children: [
      TextButton(
        onPressed: onPressed,
        child: Image(
          image: AssetImage(image),
          width: size,
          height: size,
        ),
      ),
      Padding(
        padding: padding,
        child: Text(
          title,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      )
    ],
  );
}

/// Ряд виджетов.
Widget rowWidgets(
    {required String title,
      required String titleTwo,
      required String titleThree,
      required String image,
      required String imageTwo,
      required String imageThree,
      required double size,
      required EdgeInsets padding,
      required MainAxisAlignment mainAxisAlignment,
      required CrossAxisAlignment crossAxisAlignment,
      required Function() onPressed,
      required Function() onPressedTwo,
      required Function() onPressedThree}) {
  return Row(
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
    children: [
      circleButtonWidget(
        title: title,
        image: image,
        size: size,
        padding: padding,
        onPressed: onPressed,
      ),
      circleButtonWidget(
        title: titleTwo,
        image: imageTwo,
        size: size,
        padding: padding,
        onPressed: onPressedTwo,
      ),
      circleButtonWidget(
        title: titleThree,
        image: imageThree,
        size: size,
        padding: padding,
        onPressed: onPressedThree,
      ),
    ],
  );
}



