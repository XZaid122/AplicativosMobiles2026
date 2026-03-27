import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unitecnar',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Unitecnar 5.0'),
        ),
        body: const Center(
          child: Text('Hola Mundo, Hola Werachamo'),
        ),
        floatingActionButton: _CustomButton(
          icon: Icons.add,
          onPressed: () {
            print("Botón");
          },
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _CustomButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
