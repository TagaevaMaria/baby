import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import '../../domin/entity/child.dart';



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
