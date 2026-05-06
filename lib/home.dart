import 'package:flutter/material.dart';
import 'package:nubank/areaPix.dart';
import 'package:nubank/configuracoes.dart';
import 'components/styles.dart';
import 'myWidgets/linha.dart';
import 'myWidgets/textoCard.dart';
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
      appBar: AppBar(
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
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Configuracoes(),
                            ),
                          );
                        },
                        child: Container(
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
                      ),
                      Spacer(), //o spacer é um widget flexivel ele é como se fosse um sizedbox , soque o sizedbox não é 'responsivo' este ja é
                      SizedBox(
                        width: 100, //Mudar o espaçamento entre os icones
                        height: tamanhoIconsNav,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/figuras/olhoFechado.png',
                              ),
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
                    "Olá, Gabriel",
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
      ),
      backgroundColor: corFundo,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            TextoCard(texto: 'Saldo em conta', dinheiro: '1.518,38'),
            Container(
              margin: EdgeInsetsGeometry.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Areapix()),
                      );
                    },
                    child: bolinha(
                      'assets/figuras/pix.png',
                      'Área Pix e Transferir',
                    ),
                  ),
                  bolinha('assets/figuras/barrinha.png', 'Pagar'),
                  bolinha(
                    'assets/figuras/celularzao.png',
                    'Recarga de celular',
                  ),
                  bolinha(
                    'assets/figuras/Internet.png',
                    'Transferência Internacional',
                  ),
                ],
              ),
            ),

            Cartao('assets/figuras/celularzinho.png', 'Meus Cartões'),

            Linha(),

            TextoCard(
              texto: 'Cartão de crédito',
              dinheiro: '16,44',
              subtexto: 'Fatura Atual',
            ),
            SizedBox(height: 10),
            Text(
              'Limite disponível de R\$ 983,56',
              style: TextStyle(color: corTextos),
            ),

            Linha(),
            TextoCard(
              texto: 'Empréstimo',
              dinheiro: '50.000,00',
              subtexto: 'Valor disponível de até',
            ),

            Linha(),

            TextoCard(texto: 'Total em Caixinhas', dinheiro: '0,00'),

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
    );
  }
}
