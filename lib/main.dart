import 'package:flutter/material.dart';
import 'package:secondpage_app/screens/login.screen.dart';
import 'screens/home.screen.dart';
import 'screens/splash.screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
