import 'package:flutter/material.dart';
import 'package:nubank/home.dart';

class Splash1 extends StatefulWidget {
  @override
  _Splash1Stado createState() => _Splash1Stado();
}

class _Splash1Stado extends State<Splash1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ), //gabriel eu coloquei para ir para a pagina principal somente para me ajudar a desenvolver , porem se voce for fazer o login mude o caminho aqui!!! 8=====D
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8A19D6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/NubankLogo.png', width: 150, height: 150),
            SizedBox(height: 15),
            CircularProgressIndicator(
              backgroundColor: Colors.transparent,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
//não sabia como que era a tela para entrar no nubank XDDDDDDDDDDDDDDD