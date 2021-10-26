import 'package:flutter/material.dart';
import 'screens/homepage.dart';
void main()=> runApp(MyApp());
// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff100702),
        primarySwatch: Colors.brown,
      ),
      home: HomePage(),
    );
  }
}
