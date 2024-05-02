import 'package:flutter/material.dart';

import '../../ui/navigation/main_navigation.dart';


class RegisterScreenVM extends ChangeNotifier{

  void register(BuildContext context){
    Navigator.pushNamed(context, MainNavigationRouteNames.mainScreen);
  }
///если авторизация успешна и создан пользователь то отправить на экран входа. LoginScreenDI

}




