import 'package:flutter/material.dart';


///Widget TextFiled
class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Function? onEditingComplete;
  final ValueChanged<String>? onChanged;

  const MyTextField({super.key, this.controller, this.onEditingComplete, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
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
      ),

    );
  }
}

/// виджет текста, который над MyTextFild
class MyText extends StatelessWidget {
  final String text;

  MyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(color: Colors.grey),
      textAlign: TextAlign.center,
    );
  }
}

/// настройка  AppBar
class MyAppBar extends StatelessWidget {
  final String text;
  final Widget widget;
   const MyAppBar({super.key, required this.text, required this.widget});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(165, 218, 249, 1),
          title:  Center(
            child: Text(
              text,
              style:  TextStyle(fontSize: 25),
            ),
          ),
        ),
    body: widget,);
  }
}


