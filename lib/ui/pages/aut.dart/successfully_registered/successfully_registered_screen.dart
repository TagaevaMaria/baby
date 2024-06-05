import 'package:baby/ui/background_widget.dart';
import 'package:baby/ui/pages/aut.dart/successfully_registered/successfully_registered_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SuccessfullyRegisteredScreenDI extends StatelessWidget {
  const SuccessfullyRegisteredScreenDI({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SuccessfullyRegisteredScreenVM(),
        child: const SuccessfullyRegisteredScreen());
  }
}

class SuccessfullyRegisteredScreen extends StatelessWidget {
  const SuccessfullyRegisteredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _modelRead = context.read<SuccessfullyRegisteredScreenVM>();
    final _modelWatch = context.watch<SuccessfullyRegisteredScreenVM>();
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
                    onPressed: () => _modelWatch.signOut(context),
                    child: const Text('Войти'),
                  )
                ],
              ),
            )));
  }
}
