import 'dart:math';

import 'package:flutter/material.dart';
import 'package:secondpage_app/screens/home.screen.dart';
import 'package:secondpage_app/screens/splash.screen.dart';

import '../models/user.model.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      behavior: SnackBarBehavior.floating,
    ),
  );
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late User user;

  @override
  void initState() {
    super.initState();
    user = User(username: '', password: '');
  }

  void handleLogin() {
    if (user.username == '') {
      showSnackBar(context, "Username is required!");
      return;
    } else if (user.password == '') {
      showSnackBar(context, "Password is required!");
      return;
    } else {
      showSnackBar(context, "Đăng nhập thành công!");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  "Đăng nhập".toUpperCase(),
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: inputMethod("Username", false),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: inputMethod("Password", true),
              ),
              FractionallySizedBox(
                widthFactor: 1.0,
                child: ElevatedButton(
                    onPressed: () {
                      handleLogin();
                    },
                    child: Text(
                      "Submit".toUpperCase(),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextField inputMethod(String placeHolder, bool isPassword) {
    return TextField(
      obscureText: isPassword,
      onChanged: (value) {
        setState(() {
          if (isPassword) {
            user.password = value;
          } else {
            user.username = value;
          }
        });
      },
      decoration: InputDecoration(
        labelText: placeHolder,
        border: OutlineInputBorder(),
      ),
    );
  }
}
