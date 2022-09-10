import 'package:flutter/material.dart';

//This is button 1
class Button1 extends StatelessWidget {
  final iconName;
  final String buttonText;

  const Button1({Key? key, required this.buttonText, required this.iconName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showSnack() => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Button tapped'),
            duration: Duration(milliseconds: 500),
          ),
        );

    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _showSnack,
          child: Row(
            children: <Widget>[
              Icon(iconName),
              Text(buttonText),
            ],
          ),
        ),
      ],
    );
  }
}

//This is button 2
class Button2 extends StatelessWidget {
  final String buttonText;

  const Button2({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showSnack() => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Button tapped'),
            duration: Duration(milliseconds: 500),
          ),
        );

    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        TextButton(
          onPressed: _showSnack,
          child: Text(
            buttonText,
            style: const TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ],
    );
  }
}

//This is button 3
class Button3 extends StatelessWidget {
  final String buttonText;

  const Button3({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

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
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }
}

//This is button 4
class Button4 extends StatelessWidget {
  final iconName;

  const Button4({Key? key, required this.iconName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showSnack() => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Button tapped'),
            duration: Duration(milliseconds: 500),
          ),
        );
    return IconButton(
      iconSize: 32.0,
      icon: Icon(iconName),
      tooltip: 'Place a phone call',
      onPressed: _showSnack,
    );
  }
}
