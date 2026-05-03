import 'package:flutter/material.dart';
import 'package:nubank/components/styles.dart';
import 'package:nubank/home.dart';

class Configuracoes extends StatefulWidget {
  const Configuracoes({super.key});

  @override
  State<Configuracoes> createState() => _ConfiguracoesState();
}


class _ConfiguracoesState extends State<Configuracoes> {
  static bool _isDark = false;
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
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
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
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.dark_mode_outlined, color: corTextos),
                SizedBox(width: 10),
                Text('Modo Escuro', style: estiloPreto),
              ],
            ),

            Switch(
              value: _isDark,
              onChanged: (bool novoValor) {
                _isDark = novoValor;
                setState(() {
                  trocarTema();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
