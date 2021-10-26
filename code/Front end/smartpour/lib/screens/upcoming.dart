// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'optionspage.dart';

// ignore: use_key_in_widget_constructors
class UpcomingPage extends StatelessWidget {
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
            child: Image.asset("images/upcoming_bg.jpeg", fit: BoxFit.cover),
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
          ),
          Positioned(
            top: 80,
            child: Text(
              "Upcomings",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ), 
            ),
          ),
          
          Positioned(
            bottom: 30,
            child: SizedBox(
              height: 60,
              width: 300,
              child: ElevatedButton(onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => OptionsPage(),
                  ),
                ),
               style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0),
               ),primary: Color(0xffB98C53)),
               child: Text(
                  "Done",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),),
            ),
          ),
        ],
      ),
    );
  }
}