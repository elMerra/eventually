import 'package:flutter/material.dart';
import 'package:pandiller_alpha/screens/home_screen.dart';
import 'card_events.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CardEvents(),
    );
  }
}
