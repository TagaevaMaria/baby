import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../ui/navigation/main_navigation.dart';
import '../auth.dart';

class LoginScreenVM extends ChangeNotifier {

  final FirebaseAuthService _auth = FirebaseAuthService();

  ///методы навигации
  void register(BuildContext context){
    Navigator.pushNamed(context, MainNavigationRouteNames.registerScreenDI);
  }





  /// контроллеры
  final TextEditingController _controllerEmail = TextEditingController();

  TextEditingController get controllerEmaila => _controllerEmail;

  final TextEditingController _controllerPassword = TextEditingController();

  TextEditingController get controllerPassworda => _controllerPassword;

  /// метод регистрации
  void signIn(BuildContext context) async {
    String email = _controllerEmail.text;
    String password = _controllerPassword.text;

    User? user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    if (user != null) {
      print('Пользователь успешно вошел');
      Navigator.pushNamed(context, MainNavigationRouteNames.mainScreen);
    } else
      print('Произошла ошибка');
  }
}
