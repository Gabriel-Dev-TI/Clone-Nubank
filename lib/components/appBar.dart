import 'package:flutter/material.dart';
import 'styles.dart';

AppBar appBarNubank = AppBar(
  backgroundColor: corNubank,
  toolbarHeight: 140, //tamanho do appbar
  actions: [
    Expanded(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: tamanhoIconUserNav,
                  height: tamanhoIconUserNav,
                  decoration: BoxDecoration(
                    color: CorFundoPessoaNav,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage('assets/figuras/pessoinha.png'),
                  ),
                ),
                Spacer(), //o spacer é um widget flexivel ele é como se fosse um sizedbox , soque o sizedbox não é 'responsivo' este ja é
                SizedBox(
                  width: 100, //Mudar o espaçamento entre os icones
                  height: tamanhoIconsNav,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/figuras/olhoFechado.png'),
                        width: tamanhoIconsNav,
                        height: tamanhoIconsNav,
                      ),
                      Image(
                        image: AssetImage('assets/figuras/duvida.png'),
                        width: tamanhoIconsNav,
                        height: tamanhoIconsNav,
                      ),
                      Image(
                        image: AssetImage('assets/figuras/email.png'),
                        width: tamanhoIconsNav,
                        height: tamanhoIconsNav,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Text(
              "Olá, Gabriel bostinha rala",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight(600),
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    ),
  ],
);
