


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import '../../ui/navigation/main_navigation.dart';

class SuccessfullyRegisteredScreenVM extends ChangeNotifier{

  ///переменная которая показывает или не показывает CircularProgressIndicator



  Future<void> signOut(BuildContext context) async{

    FirebaseAuth.instance.signOut();

    Navigator.pushNamed(
        context, MainNavigationRouteNames.loginScreenDI);



  }


}