import 'package:flutter/material.dart';
import 'package:nubank/components/styles.dart';

class Linha extends StatelessWidget {
  const Linha({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: corSecundaria,
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 3,
    );
  }
}
