import 'package:flutter/material.dart';
import 'package:nubank/areaPix.dart';
import 'package:nubank/splash.dart';
import 'components/appBar.dart';
import 'components/styles.dart';
import 'myWidgets/linha.dart';
import 'myWidgets/textoDinheiro.dart';
import 'myWidgets/bolinha.dart';
import 'myWidgets/cartao.dart';
import 'myWidgets/bloco.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarNubank,
      backgroundColor: corFundo,
      body: GestureDetector(
        onTap: () => setState(() {
          trocarTema();
        }),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              TextMoney('Saldo em conta', '-5.234.112,38'),
              Container(
                margin: EdgeInsetsGeometry.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Splash(Areapix(), 1),
                          ),
                        );
                      },
                      child: bolinha('assets/figuras/pix.png', 'Área Pix'),
                    ),
                    bolinha('assets/figuras/barrinha.png', 'Pagar'),
                    bolinha('assets/figuras/celularzao.png', 'Recarga'),
                    bolinha(
                      'assets/figuras/Internet.png',
                      'Transferência Internacional',
                    ),
                  ],
                ),
              ),

              Cartao('assets/figuras/celularzinho.png', 'Meus Cartões'),

              Linha(),

              TextoMoneyDescription(
                'Cartão de crédito',
                'Fatura Atual',
                '-2316,44',
              ),
              SizedBox(height: 10),
              Text(
                'Limite disponível de R\$ 983,56',
                style: TextStyle(color: corTextos),
              ),

              Linha(),
              TextoMoneyDescription(
                'Empréstimo',
                'Valor disponível de até',
                '100,00 (para negros)',
              ),

              Linha(),

              TextMoney('Total em Caixinhas', '0,00'),

              Bloco(100, 100, corBloco, Icon(Icons.add)),
              Row(
                children: [
                  SizedBox(width: 5),
                  Text('Criar caixinha', style: TextStyle(color: corTextos)),
                ],
              ),

              Linha(),

              Text('Descubra mais', style: estiloPreto),

              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 330,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Bloco(
                      300,
                      210,
                      corSecundaria,
                      BlocoInfo(
                        titulo: 'Indique o Nu para amigos',
                        descricao: 'Espalhe como é simples estar no controle.',
                        buttonText: 'Indicar amigos',
                        linkImg: 'assets/indiqueC.jpeg',
                      ),
                    ),
                    Bloco(
                      300,
                      210,
                      corSecundaria,
                      BlocoInfo(
                        titulo: 'Portabilidade de salário',
                        descricao:
                            'Liberdade é escolher onde receber seu dinheiro.',
                        buttonText: 'Conhecer',
                        linkImg: 'assets/portabilidadeN.jpg',
                      ),
                    ),
                    Bloco(
                      300,
                      210,
                      corSecundaria,
                      BlocoInfo(
                        titulo: 'Samsung Pay',
                        descricao:
                            'Pague usando só o seu celular ou relógio Samsung.',
                        buttonText: 'Conhecer mais',
                        linkImg: 'assets/samsungN.jpg',
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    color: corNubank,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Avalie esta tela',
                    style: TextStyle(
                      color: corNubank,
                      fontSize: 15,
                      fontWeight: FontWeight(700),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
