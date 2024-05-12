import 'package:baby/aut.dart/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../ui/navigation/main_navigation.dart';

class RegisterScreenVM extends ChangeNotifier {
  final FirebaseAuthService _auth = FirebaseAuthService();

  /// контроллеры
  final TextEditingController _controllerName = TextEditingController();

  TextEditingController get controllerName => _controllerName;

  final TextEditingController _controllerEmail = TextEditingController();

  TextEditingController get controllerEmail => _controllerEmail;

  final TextEditingController _controllerPassword = TextEditingController();

  TextEditingController get controllerPassword => _controllerPassword;


  /// метод регистрации
  void signUp(BuildContext context) async {
    String username = _controllerName.text;
    String email = _controllerEmail.text;
    String password = _controllerPassword.text;

    User? user = await _auth.signUpWithEmailAndPassword(
        email: email, password: password);
    if (user != null) {
      print('Пользователь создан');
      Navigator.pushNamed(context, MainNavigationRouteNames.successfullyRegisteredScreen);
    } else
      print('Произошла ошибка');
  }
}
