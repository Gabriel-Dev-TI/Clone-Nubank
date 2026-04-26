import 'package:flutter/material.dart';
import 'package:nubank/components/styles.dart';

class bolinha extends StatelessWidget {
  const bolinha(this.linkdaimage, this.texto, {super.key});

  final String linkdaimage;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: corSecundaria,
          ),
          child: Image(image: AssetImage(linkdaimage), color: corTextos),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: 80,
          child: Text(
            texto,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight(700),
              color: corTextos,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
