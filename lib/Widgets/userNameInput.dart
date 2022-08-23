import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserNameInput extends StatefulWidget {
  const UserNameInput({Key? key}) : super(key: key);

  @override
  State<UserNameInput> createState() => _UserNameInputState();
}

class _UserNameInputState extends State<UserNameInput> {
  final GlobalKey<FormFieldState<String>> _passwordFieldKey =
      GlobalKey<FormFieldState<String>>();

  String? _name;
  String? _phoneNumber;
  String? _email;
  String? _password;

  String? _validateName(String? value) {
    if (value?.isEmpty ?? false) {
      return 'Name is required.';
    }
    final RegExp nameExp = RegExp(r'^[A-Za-z] + $');
    if (!nameExp.hasMatch(value!)) {
      return 'Please enter only alphabetical characters.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 350),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 24.0),
              //Name form
              TextFormField(
                textCapitalization: TextCapitalization.words,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.person),
                  hintText: 'What people call you?',
                  labelText: 'Name',
                ),
                onSaved: (String? value) {
                  this._name = value;
                  print('name=$_name');
                },
                validator: _validateName,
              ),
              const SizedBox(height: 24.0),
              //Password form
              TextFormField(
                textCapitalization: TextCapitalization.words,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.password),
                  hintText: 'Which password do you want?',
                  labelText: 'Password',
                ),
                onFieldSubmitted: (String? value) {
                  this._password = value;
                  print('password=$_password');
                },
                validator: _validateName,
              ),
              const SizedBox(height: 24.0),
              //Phone number form
              TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    icon: Icon(Icons.phone),
                    hintText: 'Where can we reach you?',
                    labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
                onSaved: (String? value) {
                  this._phoneNumber = value;
                  print('phoneNumber=$_phoneNumber');
                },
                //TextInputFormatters are applied in sequence
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              const SizedBox(height: 24.0),
              //Email form
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.email),
                  hintText: 'Your email adress',
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
                onSaved: (String? value) {
                  print('email$_email');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
