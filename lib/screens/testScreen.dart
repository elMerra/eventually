import 'package:flutter/material.dart';
import 'package:pandiller_alpha/screens/home_screen.dart';
import 'package:pandiller_alpha/screens/login_screen.dart';
import 'package:pandiller_alpha/widgets/bottomAppBar_floatingAppButton.dart';
import 'package:pandiller_alpha/widgets/bottomConvexAppBar.dart';
import 'package:pandiller_alpha/widgets/hiddableBottomBar.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: HomeScreen(),
    );
  }
}
