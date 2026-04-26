import 'package:flutter/material.dart';
import 'package:nubank/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8A19D6),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 80),
          child: Image.asset('assets/NubankLogo.png', width: 150, height: 150),
        ),
      ),
    );
  }
}
