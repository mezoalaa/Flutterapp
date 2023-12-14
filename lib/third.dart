import 'package:flutter/material.dart';

import 'forth.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 250, // Set the desired width of the container
              height: 210, // Set the desired height of the container
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/time.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // Adjust spacing if needed
          Center(
            child: Text(
              'No time to waste when you need your coffee', // Add the desired text
              style: TextStyle(
                color: Colors.white, // Set the text color
                fontSize: 17, // Set the font size
              ),
            ),
          ),
          SizedBox(height: 20), // Adjust spacing if needed
          FloatingActionButton(
            onPressed: () {
              // Call the correct function to navigate to the fourth page
              _navigateToFourthPage(context);
            },
            tooltip: 'Go to Fourth Page',
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }

  // Function to navigate to the fourth page
  void _navigateToFourthPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FourthPage()), // to gooo
    );
  }
}

