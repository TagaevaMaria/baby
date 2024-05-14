import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../ui/background_widget.dart';
import '../../ui/theme/style_text_filed.dart';
import 'login_screen_model.dart';

/// страница авторизации, входа уже ранее зарегистрированного пользователя

class LoginScreenDI extends StatelessWidget {
  const LoginScreenDI({super.key});

  @override
  Widget build(BuildContext context) =>
      ChangeNotifierProvider(
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
          TextField(
              controller: _modelWatch.controllerEmaila,
              style: const TextStyle(fontSize: 20, color: Colors.indigo),
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              )),
          MyText(text: 'Электронная почта'),
          const SizedBox(height: 10),
          TextField(
              controller: _modelWatch.controllerPassworda,
              style: const TextStyle(fontSize: 20, color: Colors.indigo),
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              )),
          MyText(text: 'пароль'),
          TextButton(
            onPressed: () => _modelRead.signIn(context),
            child: const Text('Войти'),
          ),
          TextButton(
              onPressed: () => _modelRead.register(context),
              child: const Text('Нет аккаута? Зарегистрируйся.'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Сбросить пароль'),
        )
        ],
      ),
    ),)
    ,
    );
  }
}
