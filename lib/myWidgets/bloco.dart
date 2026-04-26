import 'package:flutter/material.dart';

class Bloco extends StatelessWidget {
  const Bloco(this.tamanho, this.cor, this.meio, {super.key});

  final double tamanho;
  final Color cor;
  final Widget meio;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
          width: tamanho,
          height: tamanho,
          decoration: BoxDecoration(
            color: cor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: meio,
        ),
      ],
    );
  }
}
