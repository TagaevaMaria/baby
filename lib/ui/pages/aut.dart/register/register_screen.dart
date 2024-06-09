import 'package:baby/library/scaffold_manager/scaffold_manager.dart';
import 'package:baby/ui/pages/aut.dart/register/register_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../theme/style_text_filed.dart';


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
    return ScaffoldManager(
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
              TextField(
                controller: _modelWatch.controllerName,style: const TextStyle(fontSize: 20, color: Colors.indigo),
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  )
              ),
              MyText(text: 'Имя'),
              const SizedBox(height: 10),
              TextField(controller: _modelWatch.controllerEmail,style: const TextStyle(fontSize: 20, color: Colors.indigo),
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
              TextField(controller: _modelWatch.controllerPassword,style: const TextStyle(fontSize: 20, color: Colors.indigo),
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
              MyText(text: 'Пароль'),
              TextButton(
                onPressed: ()=>_modelWatch.signUp(context), child: _modelRead.isSigning ? const CircularProgressIndicator(color: Colors.white) :
              Text('Зарегистрироваться'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
