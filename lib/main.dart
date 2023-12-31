// main.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'onbording.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        '/home': (context) => OnBoardingScreen(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.network(
                'https://t4.ftcdn.net/jpg/02/67/42/31/360_F_267423185_vVV0AG6YJnVTXOnrTeEkL4fLXT4vJxu5.jpg',
              errorBuilder: (context, error, stackTrace) {
                // Handle the error, e.g., display a placeholder image
                return FlutterLogo(size: 100.0);
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'Welcome To Your Dream Home',

              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}
