import 'package:flutter/material.dart';

Color corNubank = Color(0xFF8A19D6);
Color corSecundaria = Color.fromARGB(255, 218, 218, 218);
Color corTextos = Colors.black;
Color corFundo = Colors.white;
Color corBloco = const Color.fromARGB(255, 218, 234, 247);
Color CorFundoPessoaNav = Color.fromRGBO(255, 255, 255, 0.3);
double tamanhoIconUserNav = 40;
double tamanhoIconsNav = 20;

TextStyle estiloPreto = TextStyle(
  color: corTextos,
  fontSize: 18,
  fontWeight: FontWeight(700),
);

void trocarTema() {
  //altera o tema para escuro ou claro
  corFundo = corFundo == Colors.black ? Colors.white : Colors.black;
  corTextos = corTextos == Colors.black ? Colors.white : Colors.black;
  corSecundaria = corSecundaria ==Color.fromARGB(255, 218, 218, 218)
      ? Color.fromARGB(255, 46, 46, 46)
      :Color.fromARGB(255, 218, 218, 218);
  corBloco = corBloco == const Color.fromARGB(255, 218, 234, 247)
      ? const Color.fromARGB(255, 50, 84, 112)
      : const Color.fromARGB(255, 218, 234, 247);
  estiloPreto = TextStyle(
    color: corTextos,
    fontSize: 18,
    fontWeight: FontWeight(700),
  );
}
