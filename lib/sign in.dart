import 'package:flutter/material.dart';

import 'SignUpPage.dart';
import 'login.dart';



class beginingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Welcome", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text(
                "Showcasing the best drinks",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black12, fontSize: 15),
              ),
              SizedBox(height: 20), // Add space between text and the next container
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/login.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 50,
                        onPressed: () {
                          _navigateTologinPage(context);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        color: Colors.white,
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          // Navigate to sign-up page
                          _navigateToSignUpPage(context);
                        },
                        color: Colors.yellow,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Add more widgets or content as needed
            ],
          ),
        ),
      ),
    );
  }

  // Function to navigate to the sign-up page
  void _navigateToSignUpPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpPage()), // Ensure correct class name
    );
  }
  void _navigateTologinPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => loginPage()), // Ensure correct class name
    );
  }
}



