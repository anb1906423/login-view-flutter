import 'dart:async';

import 'package:flutter/material.dart';
import 'package:secondpage_app/screens/home.screen.dart';
import 'package:secondpage_app/screens/login.screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Chờ 2 giây sau đó chuyển đến màn hình home screen
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: 1.0, // Hiển thị widget
          duration: Duration(seconds: 2), // Thời gian hiệu ứng opacity
          child: Text(
            'Welcome!!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
