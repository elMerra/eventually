import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle blackStyle = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white);
    const TextStyle bodyStyle =
        TextStyle(fontWeight: FontWeight.w500, color: Colors.white);
    void testFunction() {
      return print('Hello');
    }

    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                Color.fromARGB(255, 197, 148, 74),
                Color.fromARGB(255, 255, 247, 180)
              ])),
          child: Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 60),
                  child: Image.asset('assets/images/man.png'),
                ),
                const Text(
                  'Create and find events in one place',
                  style: blackStyle,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tortor at auctor urna nunc. Orci porta non pulvinar neque.',
                  style: bodyStyle,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 40, top: 100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white30,
                  ),
                  child: IconButton(
                    iconSize: 45,
                    onPressed: testFunction,
                    icon: const Icon(Icons.arrow_right_alt_rounded),
                    color: Colors.white,
                    padding: const EdgeInsets.only(
                        left: 35, right: 35, top: 5, bottom: 5),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
