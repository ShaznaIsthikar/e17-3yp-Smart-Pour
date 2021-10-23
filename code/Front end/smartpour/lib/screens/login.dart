// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smartpour/screens/devicepage.dart';
import 'package:smartpour/screens/signup.dart';


import '../constant.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}
 class  _LoginViewState extends State<LoginPage>{
   final _formKey = GlobalKey<FormState>();
   TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  
  
   @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final emailField = TextFormField(
      //enabled: isSummtting,
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.white,fontSize: 20,
      ),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        hintText: "Your Email",
        labelText: "Email",
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        hintStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      validator:(value){
        if(value!.isEmpty||!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value)){
            return "Enter correct email";
        }else{
            return null;
        }
      }
    );
    
    final passwordField = Column(
      children: <Widget>[
        TextFormField(
          obscureText: true,
          controller: _passwordController,
          style: TextStyle(
            color: Colors.white,fontSize: 20,
          ),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            hintText: "password",
            labelText: "Password",
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            hintStyle: TextStyle(
              color: Colors.white,
            ),
          ),
          validator: (value){
            if(value!.isEmpty){
              return "Enter the password";
            }else{
              return null;
            }
          },
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            MaterialButton(
                child: Text(
                  "Forgot Password",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)
                  
                ),
                onPressed: () {
                  //popups
                }
            ),     
          ],
        ),
      ],
    );


    final fields = Padding(
      padding: EdgeInsets.only(top: 10.0,left: 10,right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
           emailField,
          passwordField,
        ],
      ),
    );
    return Scaffold(
        body:Form(
          key: _formKey,
          child:Stack(
            children:[ 
              Container(
                  height: size.height,
                  width: size.height,
                  child: Image.asset("images/bg_log_sign.jpeg", fit: BoxFit.cover),
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
              SingleChildScrollView(
             child: Column(
              children: [
                Container(alignment: Alignment.center,padding: EdgeInsets.only(top:80),child: Text("LOG IN",style: TextStyle(fontSize:50,fontWeight: FontWeight.bold,color: Colors.white,),),), 
                Container(alignment: Alignment.center,padding: EdgeInsets.only(top:0),child: Image.asset("images/logo_t.png",width: size.width * 0.6,),),
                SizedBox(height: 7,),
                Container(margin:EdgeInsets.only(left: 20,right: 20),height: 280,padding: EdgeInsets.only(left:10,right: 10),width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white.withOpacity(0.5),),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [fields],
                ),) ,
                SizedBox(height: 30,),
                Positioned(bottom: 30,
                child: SizedBox(height: 60,width: 300,child: FlatButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),color: primaryColor,
                onPressed: (){ if(_formKey.currentState!.validate()){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>DevicePage() ));
                }},
                child: Text("LOG IN",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),),),),
                ),
                SizedBox(height: 30,),
                InkWell(
                onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>SignupPage() ));
                },
                child: Text("Don't have an account ? Sign Up",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.white),),
                ),
                ],),
              ),
              ],

          ),
          )
    );
  }
 }