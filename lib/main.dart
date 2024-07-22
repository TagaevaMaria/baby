import 'package:baby/di/di_container.dart';
import 'package:baby/ui/navigation/main_navigation.dart';
import 'package:baby/ui/navigation/main_navigation_route_names.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'domin/services/firebase_options.dart';

/// Запуск приложения
abstract class AppFactory{
  Widget makeApp();
}
final appFactory = makeAppFactory();


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(appFactory.makeApp());
}


abstract class MyAppNavigation{
  final initialRoute = MainNavigationRouteNames.loginScreenDI;
  Map <String, Widget Function(BuildContext)> get routes;

}



class MyApp extends StatelessWidget {
  final MyAppNavigation navigation;

  const MyApp({super.key, required this.navigation});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: navigation.routes,
      initialRoute: navigation.initialRoute,
    );
  }
}
