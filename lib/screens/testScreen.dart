import 'package:flutter/material.dart';
import 'package:pandiller_alpha/Widgets/animatedRadialMenu.dart';
import 'package:pandiller_alpha/screens/IntroScreens/introScreen.dart';
import 'package:pandiller_alpha/widgets/allDialogs.dart';
import 'package:pandiller_alpha/widgets/animatedIcons.dart';
import 'package:pandiller_alpha/widgets/pageSelector.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: IntroScreen(),
    );
  }
}
