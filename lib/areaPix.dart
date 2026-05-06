import 'package:flutter/material.dart';
import 'package:nubank/components/styles.dart';
import 'package:nubank/home.dart';
import 'package:nubank/myWidgets/bolinha.dart';
import 'package:nubank/myWidgets/linha.dart';
import 'package:nubank/myWidgets/textoCard.dart';

class Areapix extends StatelessWidget {
  const Areapix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: corFundo,
        leading: IconButton(
          icon: Icon(Icons.close, color: corTextos),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15, bottom: 5),
            child: Icon(Icons.help_outline, color: corTextos),
          ),
        ],
      ),
      backgroundColor: corFundo,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text('Área Pix', style: estiloPreto),
                SizedBox(height: 5),
                Text(
                  'Envie e receba pagamentos a qualquer hora e dia da semana, sem pagar nada por isso.',
                  style: TextStyle(color: Color.fromARGB(255, 155, 152, 152)),
                ),
                SizedBox(height: 15),
                Text('Enviar', style: estiloPreto),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    bolinha('assets/figuras/dinheiroSobe.png', 'Transferir'),
                    bolinha(
                      'assets/figuras/copiaEcola.png',
                      'Pix Copia e Cola',
                    ),
                    bolinha('assets/figuras/qrcode.png', 'Ler QR code'),
                  ],
                ),
                SizedBox(height: 15),
                Text('Receber', style: estiloPreto),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    bolinha('assets/figuras/dinheiroBalaozinho.png', 'Cobrar'),
                    bolinha('assets/figuras/dinheiroDesce.png', 'Depositar'),
                  ],
                ),
              ],
            ),
          ),
          Linha(),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
            child: TextoCard(
              texto: 'Registrar ou trazer chaves',
              subtexto:
                  'Registre uma nova chave ou faça uma\nportabilidade para Nubank',
              corSubtexto: Color.fromARGB(255, 155, 152, 152),
            ),
          ),
          Linha(),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
            child: TextoCard(
              texto: 'Configurar Pix',
              subtexto:
                  'Gerencie seu limite diário de\n transfêrencias ou suas chaves Pix',
              corSubtexto: Color.fromARGB(255, 155, 152, 152),
            ),
          ),
          Linha(),
        ],
      ),
    );
  }
}
