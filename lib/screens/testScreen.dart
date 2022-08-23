import 'package:flutter/material.dart';
import 'package:pandiller_alpha/widgets/bottomConvexAppBar.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ConvexAppExample(),
    );
  }
}
