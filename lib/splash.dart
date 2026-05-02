import 'package:flutter/material.dart';
import 'components/styles.dart';

class Splash extends StatefulWidget {
  const Splash(this.classe, this.segs, {super.key});

  final Widget classe;
  final int segs;

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: widget.segs), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => widget.classe),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: corNubank,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 80),
          child: Image.asset('assets/NubankLogo.png', width: 150, height: 150),
        ),
      ),
    );
  }
}
