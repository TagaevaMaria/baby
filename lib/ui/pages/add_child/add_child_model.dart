import 'package:baby/domin/entity/child.dart';
import 'package:baby/ui/navigation/main_navigation_route_names.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';


class AddChildVM extends ChangeNotifier {
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
          .pushNamed(MainNavigationRouteNames.mainScreenDI),
    );
  }



}

