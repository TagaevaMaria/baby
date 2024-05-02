import 'package:flutter/material.dart';

import '../../ui/navigation/main_navigation.dart';


class LoginScreenVM extends ChangeNotifier{


  /// Навигация
  ///
  void enter(BuildContext context){
    Navigator.pushNamed(context, MainNavigationRouteNames.mainScreen);

  }

  void register(BuildContext context){
    Navigator.pushNamed(context, MainNavigationRouteNames.registerScreenDI);
    
  }


  final TextEditingController _emailController = TextEditingController();

  TextEditingController get emailUserController {
    return _emailController;
  }

  final TextEditingController _passwordController = TextEditingController();

  TextEditingController get passwordUserController {
    return _passwordController;
  }
}







