import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  Widget bolinha(String linkdaimage, String texto) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: 50,
        height: 50,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFF0F1F5),
        ),
        child: Image(
          image: AssetImage('$linkdaimage'),
          width: 1,
          height: 1,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 10),
      SizedBox(
        width: 80,
        child: Text(
          "$texto",
          style: TextStyle(fontSize: 10, fontWeight: FontWeight(800)),
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF8A19D6),
        toolbarHeight: 110, //tamanho do appbar aqui gabriel
        actions: [
          Expanded(
            //o expanded faz com que os seus filhos ocupem todo o espaço POSSIVEL do pai , eu esqueci o outro widget mas ele faz com seus filhos ocupem todo o espaço do pai
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.all(
                    10,
                  ), //gabriel isso aqui é como se fosse o padding no html so que esse é somente os lado da horizontal , direita e esquerda
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.3),
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(
                          5,
                        ), //gabriel isso aqui é como se fosse o padding no html
                        child: Image(
                          image: AssetImage('assets/figuras/pessoinha.png'),
                        ),
                      ),
                      Spacer(), //o spacer é um widget flexivel ele é como se fosse um sizedbox , soque o sizedbox não é 'responsivo' este ja é
                      Container(
                        width:
                            100, //Gabriel mude aqui para mudar o espaçamento entre os icones
                        height: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/figuras/olhoFechado.png',
                              ),
                              width:
                                  15, //mude o tamanho dos tres icones por favor se tiver errado
                              height: 15,
                            ),
                            Image(
                              image: AssetImage('assets/figuras/duvida.png'),
                              width: 15,
                              height: 15,
                            ),
                            Image(
                              image: AssetImage('assets/figuras/email.png'),
                              width: 15,
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Olá, Gabriel",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight(500),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ), //vou te matar gabriel olha o tanto de codigo que deu , e esse so foi o appbar
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(10),
            child: Container(
              height: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Conta",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight(500),
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "R\$2.000.000.000",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight(800),
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(5),
            child: Container(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  //pix , pagar , transferir , depositar ,recarga , cobrar , transferir internacionalmente
                  bolinha('assets/figuras/pix.png', 'Área Pix'),
                  bolinha('assets/figuras/barrinha.png', 'Pagar'),
                  bolinha('assets/figuras/dinheiroSobe.png', 'Transferir'),
                  bolinha('assets/figuras/dinheiroDesce.png', 'Depositar'),
                  bolinha('assets/figuras/celularzinho.png', 'Recarga'),
                  bolinha('assets/figuras/dinheiroBalaozinho.png', 'Cobrar'),
                  bolinha(
                    'assets/figuras/Internet.png',
                    'Transferir internacionalmente',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
