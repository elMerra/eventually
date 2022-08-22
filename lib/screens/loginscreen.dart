import 'package:flutter/material.dart';
import 'package:pandiller_alpha/Widgets/userNameInput.dart';
import 'package:pandiller_alpha/widgets/allButtons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [UserNameInput()]));
  }
}
