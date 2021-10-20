import 'package:flutter/material.dart';
import 'screens/homepage.dart';
void main()=> runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff100702),
        primarySwatch: Colors.brown,
      ),
      home: HomePage(),
    );
  }
}
