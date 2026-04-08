import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 0;

  void incrementarContador() {
    setState(() {
      contador++;
    });
    print("Incrementado: $contador");
  }

  void decrementarContador() {
    setState(() {
      contador--;
    });
    print("Decrementado: $contador");
  }

  void resetearContador() {
    setState(() {
      contador = 0;
    });
    print("Contador reseteado");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unitecnar',
      home: Scaffold(
        appBar: AppBar(title: const Text('Unitecnar 5.0')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hola Mundo, Hola Werachamo',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 30),
              Text(
                'Veces presionado: $contador',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),

        
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _CustomButton(icon: Icons.add, onPressed: incrementarContador),
            const SizedBox(height: 10),
            _CustomButton(icon: Icons.remove, onPressed: decrementarContador),
            const SizedBox(height: 10),
            _CustomButton(icon: Icons.refresh, onPressed: resetearContador),
          ],
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _CustomButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: onPressed, child: Icon(icon));
  }
}
