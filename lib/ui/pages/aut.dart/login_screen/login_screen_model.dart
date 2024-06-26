import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../domin/global/toast.dart';
import '../../../../domin/services/auth.dart';
import '../../../navigation/main_navigation.dart';



class LoginScreenVM extends ChangeNotifier {
  /// инициализация Firebase
  final FirebaseAuthService _auth = FirebaseAuthService();

  ///переменная которая показывает или не показывает CircularProgressIndicator
  bool _isSigning = false;

  bool get isSigning => _isSigning;

  ///методы навигации
  Future<void> enter(BuildContext context) async {
    _isSigning = true;
    notifyListeners();
    String email = _controllerEmail.text;
    String password = _controllerPassword.text;

    User? user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    _isSigning = false;
    notifyListeners();

    if (user != null) {
      showToast(message: 'Вы успешно вошли!');
      Navigator.pushNamed(context, MainNavigationRouteNames.mainScreen);
    } else {
      showToast(message: 'Произошла ошибка');
    }
  }

  /// контроллеры
  final TextEditingController _controllerEmail = TextEditingController(text: 'vcebudet5.ok@mail.ru');

  TextEditingController get controllerEmaila => _controllerEmail;

  final TextEditingController _controllerPassword = TextEditingController(text: '123456');

  TextEditingController get controllerPassworda => _controllerPassword;

  /// метод регистрации
  void register(BuildContext context) async {
    Navigator.pushNamed(context, MainNavigationRouteNames.registerScreenDI);
  }

  ///метод для входа в приложение с помощью google
  Future<void> signInWithGoogle(BuildContext context) async {
    final GoogleSignIn _googleSignIn = GoogleSignIn();

    ///это пакет, который позволяет войти в приложение через google.Инициализация.
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );

        await _firebaseAuth.signInWithCredential(credential);
        Navigator.pushNamed(context, MainNavigationRouteNames.mainScreen);
      }
    } catch (e) {
      showToast(message: 'произошла ошибка $e');
    }
  }
}
