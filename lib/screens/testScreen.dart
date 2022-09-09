import 'package:flutter/material.dart';
import 'package:pandiller_alpha/screens/login_screen.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LoginScreen(),
    );
  }
}
