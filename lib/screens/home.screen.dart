import 'package:flutter/material.dart';
import 'package:secondpage_app/screens/splash.screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Slash Page'),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => SplashScreen()),
            );
          },
        ),
      ),
    );
  }a
}
