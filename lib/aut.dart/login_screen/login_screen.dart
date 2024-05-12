import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../ui/background_widget.dart';
import '../../ui/theme/style_text_filed.dart';
import 'login_screen_model.dart';

/// страница авторизации, входа уже ранее зарегистрированного пользователя

class LoginScreenDI extends StatelessWidget {
  const LoginScreenDI({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => LoginScreenVM(),
        child: LoginScreen(),
      );
}

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _modelRead = context.read<LoginScreenVM>();
    final _modelWatch = context.watch<LoginScreenVM>();
    return BackgroundWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Center(
            child: Text('Привет!'),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            children: [
              const SizedBox(height: 10),
              TextField(controller: _modelWatch.controllerEmaila),
              MyText(text: 'Электронная почта'),
              const SizedBox(height: 10),
              TextField(controller: _modelWatch.controllerPassworda),
              MyText(text: 'пароль'),
              TextButton(
                onPressed: () => _modelRead.signIn(context),
                child: const Text('Войти'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Нет аккаута? Зарегистрируся.'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Сбросить пароль'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
