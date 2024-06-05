import 'package:flutter/material.dart';
import '../../background_widget.dart';




class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackgroundWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Text('Экран сброса пароля'),
      ),
    );
  }
}
