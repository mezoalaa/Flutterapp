import 'package:coffeshop/sign in.dart';
import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: CircleAvatar(
                radius: 140, // Set the desired radius of the avatar
                backgroundImage: AssetImage('assets/cup.jpg'),
              ),
            ),
          ),
          SizedBox(height: 20), // Adjust spacing if needed
          Center(
            child: Text(
              'harry up to Drink the best coffe', // Add the desired text
              style: TextStyle(
                color: Colors.white, // Set the text color
                fontSize: 17, // Set the font size
              ),
            ),
          ),
          SizedBox(height: 20), // Adjust spacing if needed
          FloatingActionButton(
            onPressed: () {
              // Call the correct function to navigate to the sign-in page
              _navigateToSignInPage(context);
            },
            tooltip: 'Go to Sign-In Page',
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }

  // Function to navigate to the sign-in page
  void _navigateToSignInPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => beginingPage()), // Ensure correct class name
    );
  }
}

