import 'package:flutter/material.dart';
import 'styles.dart';

//Temas não estão prontos
//Precisa configurar o tema
//para alternar as cores dos textos e do fundo entre claro e escuro

ThemeData temaClaro = ThemeData(
  primaryColor: corNubank,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.deepPurple,
  ).copyWith(secondary: corNubank),
  scaffoldBackgroundColor: Colors.white,
);

ThemeData temaEscuro = ThemeData(
  primaryColor: corNubank,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.deepPurple,
  ).copyWith(secondary: corNubank),
  scaffoldBackgroundColor: Colors.black,
);
