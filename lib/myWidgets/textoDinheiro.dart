import 'package:flutter/material.dart';
import 'package:nubank/components/styles.dart';

class TextMoney extends StatelessWidget {
  const TextMoney(this.texto, this.dinheiro, {super.key});

  final String texto;
  final String dinheiro;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(texto, style: estiloPreto),
            Icon(Icons.chevron_right),
          ],
        ),
        Text('R\$ $dinheiro', style: estiloPreto),
      ],
    );
  }
}

class TextoMoneyDescription extends TextMoney {
  const TextoMoneyDescription(
    super.texto,
    this.subtexto,
    super.dinheiro, {
    super.key,
  });

  final String subtexto;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(texto, style: estiloPreto),
            Icon(Icons.chevron_right),
          ],
        ),
        SizedBox(height: 10),
        Text(subtexto),
        SizedBox(height: 2),
        Text('R\$ $dinheiro', style: estiloPreto),
      ],
    );
  }
}
