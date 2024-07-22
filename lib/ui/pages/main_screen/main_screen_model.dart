import 'package:baby/ui/navigation/main_navigation_route_names.dart';
import 'package:flutter/material.dart';

class MainScreenModelVM extends ChangeNotifier {

  /// функции для навигаций
  void screenAchievements(BuildContext context) {
    Navigator.of(context)
        .pushNamed(MainNavigationRouteNames.screenAchievements);
  }

  void screenDoctors(BuildContext context) {
    Navigator.of(context).pushNamed(
      MainNavigationRouteNames.screenDoctors,
    );
  }

  void screenPhoto(BuildContext context) {
    Navigator.of(context).pushNamed(
      MainNavigationRouteNames.screenPhoto,
    );
  }

  void screenAllergy(BuildContext context) {
    Navigator.of(context).pushNamed(MainNavigationRouteNames.screenAllergy);
  }

  void screenHeightWeight(BuildContext context) {
    Navigator.of(context)
        .pushNamed(MainNavigationRouteNames.screenHeightWeight);
  }

  void screenNotes(BuildContext context) {
    Navigator.of(context).pushNamed(MainNavigationRouteNames.notesScreenDI);
  }

  void screenAddChild(BuildContext context) {
    Navigator.of(context).pushNamed(MainNavigationRouteNames.addChild);
  }

}

