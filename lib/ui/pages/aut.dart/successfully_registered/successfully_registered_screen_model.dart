import 'package:baby/ui/navigation/main_navigation_route_names.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';





class SuccessfullyRegisteredScreenVM extends ChangeNotifier{

  ///переменная которая показывает или не показывает CircularProgressIndicator



  Future<void> signOut(BuildContext context) async{

    FirebaseAuth.instance.signOut();

    Navigator.pushNamed(
        context, MainNavigationRouteNames.loginScreenDI);



  }


}