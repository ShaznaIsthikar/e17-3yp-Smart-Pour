// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:smartpour/screens/optionspage.dart';
// ignore: use_key_in_widget_constructors
class Schedule extends StatelessWidget {

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
            child: Image.asset("images/bg_option.jpeg", fit: BoxFit.cover),
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
                  Theme.of(context).primaryColor.withOpacity(0.5)
                ],
              ),
            ),
          ),
          Positioned(
            top: 80,
            child: Text(
              "Schedule Now!",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin:EdgeInsets.only(left: 20,right: 20,top: 200),
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white.withOpacity(0.4),),
            child: Column(
              children: [
              SizedBox(height: 400,),
              ElevatedButton(onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => OptionsPage(),
                  ),
                ),
               style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0),
               ),primary: Color(0xffB98C53)),
               child: Text(
                  "Confirm",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),),
              ],
            ),) 
        ],
      ),
    );
  }
}