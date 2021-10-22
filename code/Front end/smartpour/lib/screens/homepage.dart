import 'package:flutter/material.dart';
import 'package:smartpour/screens/signup.dart';
import '../constant.dart';
import 'login.dart';
// ignore_for_file: prefer_const_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: size.height,
            width: size.height,
            child: Image.asset("images/bg.jpg", fit: BoxFit.cover),
          ),
          Container(
            padding: EdgeInsets.all(40),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor.withOpacity(0.4)
                ],
              ),
            ),
            child: Image.asset('images/coffee.png'),
          ),
          Positioned(
            top: 70,
            child: Text(
              "Coffee making at your fingertips",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: primaryColor,
              ),
            ),
          ),
          Positioned(
            top: 100,
            child: Text(
              "SMART POUR",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              
              ),
            ),
          ),
          Positioned(
            bottom: 125,
            child: SizedBox(
              height: 60,
              width: 300,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: primaryColor,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SignupPage(),
                  ),
                ),
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            child: SizedBox(
              height: 60,
              width: 300,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.white,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginPage(),
                  ),
                ),
                child: Text(
                  "LOG IN",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:primaryColor
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
