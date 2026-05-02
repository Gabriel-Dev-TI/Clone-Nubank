import 'package:flutter/material.dart';
import 'package:nubank/login.dart';
import 'splash.dart'; //tem que importar

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove aquela etiqueta do debug
      home: Splash(Login(), 3), // Referencio a classe no outro arquivo
    );
  }
}
