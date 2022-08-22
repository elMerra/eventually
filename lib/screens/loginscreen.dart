import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPassword = false;
  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromARGB(255, 197, 148, 74),
              Color.fromARGB(255, 255, 247, 180)
            ],
          ),
        ),
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                // ignore: unnecessary_this
                obscureText: !this._showPassword,
                decoration: InputDecoration(
                  labelText: 'password',
                  prefixIcon: const Icon(Icons.security),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: this._showPassword ? Colors.blue : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() => this._showPassword = !this._showPassword);
                    },
                  ),
                ),
              ),
              TextField(
                // ignore: unnecessary_this
                obscureText: !this._showPassword,
                decoration: InputDecoration(
                  labelText: 'password',
                  prefixIcon: const Icon(Icons.security),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: this._showPassword ? Colors.blue : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() => this._showPassword = !this._showPassword);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
