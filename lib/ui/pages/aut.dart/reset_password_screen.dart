import 'package:baby/library/scaffold_manager/scaffold_manager.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldManager(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Text('Экран сброса пароля'),
      ),
    );
  }
}
