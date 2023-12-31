import 'package:flutter/material.dart';

import 'constarints.dart';
import 'home.dart';
import 'sign in.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            children: <Widget>[
              OnBoardingPage(image: avatar1, title: "Choose Your Dream Home"),
              OnBoardingPage(image: avatar2, title: "Come on"),
              OnBoardingPage(image: avatar3, title: "Hurry up"),
            ],
          ),
          Positioned(
            top: 20.0,
            right: 15.0,
            child: TextButton(
              onPressed: () {
                _navigateTologin(context);
              },
              child: const Text("Skip"),
            ),
          ),
          Positioned(
            bottom: 15.0,
            right: 15.0,
            child: ElevatedButton(
              onPressed: () {
                _navigateToNextScreen(context);
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.black,
              ),
              child: const Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    // You can use Navigator to move to the next page
    // For example:
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }
}

void _navigateTologin(BuildContext context) {
  // You can use Navigator to move to the next page
  // For example:
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => beginingPage()),
  );
}



class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          image,
          width: 500,
          height: 400,
        ),
        const SizedBox(height: 20.0),
        Text(
          title,
          style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
