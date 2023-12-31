import 'package:flutter/material.dart';
import 'constarints.dart';
import 'onbording.dart';


class appScreen extends StatelessWidget {
  appScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:OnBoardingScreen(),

      body: Column(
        children: [
          Image.asset(avatar2),
          OnBoardingScreen(),
        ],
      ),
    );

  }
}
