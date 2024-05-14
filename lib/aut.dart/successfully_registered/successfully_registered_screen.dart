import 'package:baby/ui/background_widget.dart';
import 'package:baby/ui/navigation/main_navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SuccessfullyRegisteredScreen extends StatelessWidget {
  const SuccessfullyRegisteredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: const Text('Добро пожаловать!'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Вы успешно зарегистированы!'),
                  TextButton(
                    onPressed: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.pushNamed(
                          context, MainNavigationRouteNames.loginScreenDI);
                    },
                    child: const Text('Войдите в приложение'),
                  )
                ],
              ),
            )));
  }
}
