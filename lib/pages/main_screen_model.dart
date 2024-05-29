import 'package:flutter/material.dart';
import '../ui/navigation/main_navigation.dart';

class MainScreenModel extends ChangeNotifier {

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

class MainScreenModelProvider extends InheritedNotifier {
  final MainScreenModel model;

  const MainScreenModelProvider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(key: key, child: child, notifier: model);

  static MainScreenModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<MainScreenModelProvider>();
  }

  static MainScreenModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<MainScreenModelProvider>()
        ?.widget;
    return widget is MainScreenModelProvider ? widget : null;
  }
}
