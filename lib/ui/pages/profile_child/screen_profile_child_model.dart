import 'package:flutter/material.dart';



class ScreenProfileChildModel extends ChangeNotifier {



}

class ScreenProfileChildModelProvider extends InheritedNotifier {
  final ScreenProfileChildModel model;

  const ScreenProfileChildModelProvider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(key: key, child: child, notifier: model);

  static ScreenProfileChildModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ScreenProfileChildModelProvider>();
  }

  static ScreenProfileChildModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<ScreenProfileChildModelProvider>()
        ?.widget;
    return widget is ScreenProfileChildModelProvider ? widget : null;
  }
}
