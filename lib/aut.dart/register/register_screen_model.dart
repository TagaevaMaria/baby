import 'package:baby/global/toast.dart';
import 'package:baby/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../ui/navigation/main_navigation.dart';

class RegisterScreenVM extends ChangeNotifier {
  /// инициализация Firebase
  final FirebaseAuthService _auth = FirebaseAuthService();

  ///переменная которая показывает или не показывает CircularProgressIndicator
  bool _isSigning = false;
  bool get  isSigning =>_isSigning;


  /// контроллеры
  final TextEditingController _controllerName = TextEditingController();

  TextEditingController get controllerName => _controllerName;

  final TextEditingController _controllerEmail = TextEditingController();

  TextEditingController get controllerEmail => _controllerEmail;

  final TextEditingController _controllerPassword = TextEditingController();

  TextEditingController get controllerPassword => _controllerPassword;

  /// метод регистрации
  void signUp(BuildContext context) async {

    _isSigning =true;
    notifyListeners();

    String username = _controllerName.text;
    String email = _controllerEmail.text;
    String password = _controllerPassword.text;

    User? user = await _auth.signUpWithEmailAndPassword(
        email: email, password: password);
    _isSigning = false;
    notifyListeners();
    if (user != null) {
      showToast(message: 'Пользователь создан');
      Navigator.pushNamed(
          context, MainNavigationRouteNames.successfullyRegisteredScreenDI);
    } else
      print('Произошла ошибка');
  }
}
