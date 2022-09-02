import 'package:flutter/material.dart';
import 'package:pandiller_alpha/Widgets/allButtons.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('assets/images/image.png'),
            const Text(
                'Al tocar en "de acuerdo", confirmas que has leído la política de protección de datos y aceptas las condiciones del servicio'),
          ],
        ),
      ),
    );
  }
}
