// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smartpour/screens/login.dart';
import 'package:smartpour/screens/signup.dart';

void main() {
  testWidgets("Add signin passowrd & email", (WidgetTester tester) async{

      final addemail =find.byKey(ValueKey("Addemail"));
      final addpassword =find.byKey(ValueKey("Addpassword"));
      final signup =find.byKey(ValueKey("signup"));

      await tester.pumpWidget(MaterialApp(home: SignupPage(),));

      await tester.enterText(addemail, "mishelrossmaree@gmail.com");
      await tester.enterText(addpassword, "password");
      await tester.press(signup);
      await tester.pump();

      expect(find.text("mishelrossmaree@gmail.com"), findsOneWidget);
  });
  testWidgets("Add login passowrd & email", (WidgetTester tester) async{

      final addloginemail =find.byKey(ValueKey("Addloginemail"));
      final addloginpassword =find.byKey(ValueKey("Addloginpassword"));
      final login =find.byKey(ValueKey("login"));

      await tester.pumpWidget(MaterialApp(home: LoginPage(),));

      await tester.enterText(addloginemail, "mishelrossmaree@gmail.com");
      await tester.enterText(addloginpassword, "password");
      await tester.press(login);
      await tester.pump();
      expect(find.text("mishelrossmaree@gmail.com"), findsOneWidget);
  });
  
}