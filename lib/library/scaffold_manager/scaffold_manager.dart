import 'package:baby/ui/resources/assets_path.dart';
import 'package:flutter/material.dart';

/// Базовый виджет экрана
class ScaffoldManager extends StatelessWidget {
  /// Виджет тела экрана
  final Widget child;
  const ScaffoldManager({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsPath.fon),
            fit: BoxFit.cover,
          ),
        ),
        child: child,
      ),
    );
  }
}
