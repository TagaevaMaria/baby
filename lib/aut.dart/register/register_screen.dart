import 'package:baby/aut.dart/register/register_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../ui/background_widget.dart';
import '../../ui/theme/style_text_filed.dart';

class RegisterScreenDI extends StatelessWidget {
  const RegisterScreenDI({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => RegisterScreenVM(),
        child: const RegisterScreen(),
      );
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _modelRead = context.read<RegisterScreenVM>();
    final _modelWatch = context.watch<RegisterScreenVM>();
    return BackgroundWidget(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Зарегистрируйтесь'),
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const MyTextField(),
              MyText(text: 'Имя'),
              const SizedBox(height: 10),
              const MyTextField(),
              MyText(text: 'Электронная почта'),
              const MyTextField(),
              MyText(text: 'Пароль'),
              TextButton(
                onPressed: () =>_modelRead.register(context),
                child: const Text('Зарегистрироваться'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}