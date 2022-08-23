import 'package:flutter/material.dart';

class HeroExample extends StatelessWidget {
  const HeroExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 20.0,
          ),
          Material(
            child: ListTile(
              leading: GestureDetector(
                onTap: () => _showSecondPage(context),
                child: const Hero(
                  tag: 'my-hero-animation-tag',
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/man.png'),
                  ),
                ),
              ),
              title: const Text(
                'Tap on the photo to view the animation transition.',
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Scaffold(
          body: Center(
            child: Hero(
              tag: 'my-hero-animation-tag',
              child: Image.asset('assets/images/man.png'),
            ),
          ),
        ),
      ),
    );
  }
}
