import 'package:flutter/material.dart';
import 'package:nubank/components/appBar.dart';
import 'myWidgets/bolinha.dart';
import 'components/styles.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarNubank,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Saldo em conta", style: estiloPreto),
                    Icon(Icons.chevron_right),
                  ],
                ),
                Text("R\$ 2.000,00", style: estiloPreto),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  bolinha('assets/figuras/pix.png', 'Área Pix'),
                  bolinha('assets/figuras/barrinha.png', 'Pagar'),
                  bolinha('assets/figuras/dinheiroSobe.png', 'Transferir'),
                  bolinha('assets/figuras/dinheiroDesce.png', 'Depositar'),
                  bolinha('assets/figuras/celularzao.png', 'Recarga'),
                  bolinha('assets/figuras/dinheiroBalaozinho.png', 'Cobrar'),
                  bolinha(
                    'assets/figuras/Internet.png',
                    'Transferência Internacional',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
