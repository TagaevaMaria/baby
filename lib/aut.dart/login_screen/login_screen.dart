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
        child: const LoginScreen(),
      );
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final _modelRead = context.read<LoginScreenVM>();
    final _modelWatch = context.watch<LoginScreenVM>();
    return BackgroundWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Center(child: Text('Привет!')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            children: [
              const SizedBox(height: 10),
              MyTextField(controller: _modelWatch.emailUserController),
              MyText(text: 'Электронная почта'),
              const SizedBox(height: 10),
              MyTextField(controller: _modelWatch.passwordUserController),
              MyText(text: 'пароль'),
              TextButton(
                onPressed: () => _modelRead.enter(context),
                child: const Text('Войти'),
              ),
              TextButton(
                onPressed: () => _modelRead.register(context),
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
