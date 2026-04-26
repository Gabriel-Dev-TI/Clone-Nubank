import 'package:flutter/material.dart';
import 'package:nubank/components/styles.dart';

class Cartao extends StatelessWidget {
  const Cartao(this.linkdaimage, this.texto, {super.key});

  final String linkdaimage;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: corSecundaria,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset(linkdaimage, color: corTextos, width: 20, height: 20),
          SizedBox(width: 20),
          Text(texto, style: TextStyle(color: corTextos)),
        ],
      ),
    );
  }
}
