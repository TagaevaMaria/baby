import 'package:flutter/material.dart';
import '../../domin/entity/child.dart';
import 'package:hive/hive.dart';

import '../../ui/navigation/main_navigation.dart';

class AddChildModel extends ChangeNotifier {
  /// метод, который сохроняет добавленного ребенка и ведет на профиль регистрации родителей.

  String nameBaby = '';
  String dataBaby = '';
  String genderBaby = '';

  void saveChild(BuildContext context) async {
    if (nameBaby.isEmpty || dataBaby.isEmpty || genderBaby.isEmpty) return;

    if (!Hive.isAdapterRegistered(3)) {
      Hive.registerAdapter(ChildAdapter());
    }
    final box = await Hive.openBox<Child>('child_box');
    final child = Child(
        nameChild: nameBaby, dataChild: dataBaby, genderChild: genderBaby);
    await box.add(child);

    Future.sync(
      () => Navigator.of(context)
          .pushNamed(MainNavigationRouteNames.mainScreen),
    );
  }
}

class AddChildModelProvider extends InheritedNotifier {
  final AddChildModel model;

  const AddChildModelProvider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(key: key, child: child, notifier: model);

  static AddChildModelProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AddChildModelProvider>();
  }

  static AddChildModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<AddChildModelProvider>()
        ?.widget;
    return widget is AddChildModelProvider ? widget : null;
  }
}
