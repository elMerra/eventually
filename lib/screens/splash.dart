import 'package:flutter/material.dart';
import 'package:pandiller_alpha/screens/testScreen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(
      const Duration(seconds: 1),
      () {},
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const TestScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(50),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset('./assets/images/icon.png'),
            Image.asset('./assets/images/name.png'),
          ]),
        ),
      ),
    );
  }
}
