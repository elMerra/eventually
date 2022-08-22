import 'package:flutter/material.dart';

//This is button 1
class Button1 extends StatelessWidget {
  const Button1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showSnack() => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Button tapped'),
            duration: Duration(milliseconds: 500),
          ),
        );

    return Center(
      child: ButtonBar(
        children: <Widget>[
          ElevatedButton(
              onPressed: _showSnack, child: const Text('ElevatedButton'))
        ],
      ),
    );
  }
}

//This is button 2
class Button2 extends StatelessWidget {
  const Button2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showSnack() => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Button tapped'),
            duration: Duration(milliseconds: 500),
          ),
        );

    return Center(
      child: ButtonBar(
        children: <Widget>[
          TextButton(
            onPressed: _showSnack,
            child: const Text('TextButton'),
          ),
        ],
      ),
    );
  }
}

//This is button 3
class Button3 extends StatelessWidget {
  const Button3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showSnack() => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Button tapped'),
            duration: Duration(milliseconds: 500),
          ),
        );
    return Center(
      child: ButtonBar(
        children: <Widget>[
          OutlinedButton(
            onPressed: _showSnack,
            child: const Text('OutlinedButton'),
          ),
        ],
      ),
    );
  }
}

//This is button 4
class Button4 extends StatelessWidget {
  const Button4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showSnack() => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Button tapped'),
            duration: Duration(milliseconds: 500),
          ),
        );
    return Center(
      child: IconButton(
        iconSize: 32.0,
        icon: const Icon(Icons.call),
        tooltip: 'Place a phone call',
        onPressed: _showSnack,
      ),
    );
  }
}
