import 'package:flutter/material.dart';
import 'package:nubank/components/styles.dart';
import 'package:nubank/home.dart';
import 'package:nubank/myWidgets/bolinha.dart';

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
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Área Pix', style: estiloPreto),
                Text(
                  'Envie e receba pagamentos a qualquer hora e dia da semana, sem pagar nada por isso.',
                  style: TextStyle(color: Color.fromARGB(255, 155, 152, 152)),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text('Enviar', style: estiloPreto),
                ),
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
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15, top: 10),
                  child: Text('Receber', style: estiloPreto),
                ),
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
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Registrar ou trazer chaves', style: estiloPreto),
                    Container(
                      width: 250,
                      child: Text(
                        'Registre uma nova chave ou faça uma portabilidade para Nubank',
                        style: TextStyle(
                          color: Color.fromARGB(255, 155, 152, 152),
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios_rounded, size: 15),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Configurar Pix', style: estiloPreto),
                    Container(
                      width: 250,
                      child: Text(
                        'Gerencie seu limite diário de transfêrencias ou suas chaves Pix',
                        style: TextStyle(
                          color: Color.fromARGB(255, 155, 152, 152),
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios_rounded, size: 15),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
