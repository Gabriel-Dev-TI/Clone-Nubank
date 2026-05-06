import 'package:flutter/material.dart';
import 'package:nubank/components/styles.dart';

class TextoCard extends StatelessWidget {
  const TextoCard({
    super.key,
    required this.texto,
    this.dinheiro,
    this.subtexto,
    this.corSubtexto,
  });

  final String texto;
  final String? dinheiro;
  final String? subtexto;
  final Color? corSubtexto;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(texto, style: estiloPreto),
            Icon(Icons.chevron_right, color: corTextos),
          ],
        ),
        if (subtexto != null) SizedBox(height: 10),
        if (subtexto != null)
          Text(subtexto!, style: TextStyle(color: corSubtexto ?? corTextos)),
        if (dinheiro != null && subtexto != null) SizedBox(height: 2),
        if (dinheiro != null) Text('R\$ ${dinheiro!}', style: estiloPreto),
      ],
    );
  }
}
