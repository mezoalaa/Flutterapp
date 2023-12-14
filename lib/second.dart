import 'package:flutter/material.dart';
import 'package:coffeshop/third.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 300, // Set the desired width of the container
              height: 300, // Set the desired height of the container
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/cups.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // Adjust spacing if needed
          Center(
            child: Text(
              'customize Your drink', // Add the desired text
              style: TextStyle(
                color: Colors.white, // Set the text color
                fontSize: 17, // Set the font size
              ),
            ),
          ),
          SizedBox(height: 20), // Adjust spacing if needed
          FloatingActionButton(
            onPressed: () {
              // Call the correct function to navigate to the third page
              _navigateToThirdPage(context);
            },
            tooltip: 'Go to Third Page',
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }

  // Function to navigate to the third page
  void _navigateToThirdPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ThirdPage()), // Ensure correct class name
    );
  }
}


