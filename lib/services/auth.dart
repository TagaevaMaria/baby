import 'package:firebase_auth/firebase_auth.dart';
import '../domin/global/toast.dart';



class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  ///Зарегистрируйтесь с помощью электронной почты и пароля
  Future<User?> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential credential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException
    catch (e) {
      if(e.hashCode == 'Адресс электронной почти уже используется'){

        showToast(message:'Этот email уже используется');

      }else {showToast(message: 'Проблемы с сетью: ${e.hashCode}');};
      }
      return null;

  }

  ///войдите с помощью электронной почтой и пароля
  Future<User?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential credential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException
    catch (e) {
      if (e.hashCode == 'пользователь не найден' ||
          e.hashCode == 'проверьте пароль') {
        showToast(message: 'неверный e-mail или пароль');
      } else {
        showToast(message: 'Произошла ошибка в сети');
      }

    }
    return null;
  }
  }

