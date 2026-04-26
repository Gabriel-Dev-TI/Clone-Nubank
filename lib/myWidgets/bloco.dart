import 'package:flutter/material.dart';
import 'package:nubank/components/styles.dart';

class Bloco extends StatelessWidget {
  const Bloco(this.altura, this.largura, this.cor, this.meio, {super.key});

  final double largura;
  final double altura;
  final Color cor;
  final Widget meio;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
          width: largura,
          height: altura,
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

class BlocoInfo extends StatelessWidget {
  const BlocoInfo({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.buttonText,
    required this.linkImg,
  });

  final String titulo;
  final String descricao;
  final String buttonText;
  final String linkImg;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: ClipRRect(
            //dar borda arredondada para a imagem
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(linkImg, fit: BoxFit.fill),
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(titulo, style: TextStyle(color: corTextos)),
                    SizedBox(height: 10),
                    Text(
                      descricao,
                      style: TextStyle(
                        color: Color.fromARGB(255, 155, 152, 152),
                      ),
                    ),
                  ],
                ),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: corNubank),
                  child: Text(buttonText, style: TextStyle(color: corTextos)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
