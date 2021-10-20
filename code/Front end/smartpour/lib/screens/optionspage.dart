import 'package:flutter/material.dart';

import '../constant.dart';
import 'homepage.dart';
 // ignore: prefer_const_constructors
class  OptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
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
          Positioned(
            top: 80,
            child: Column(
              children: [
                Text(
                  "Life begins after Coffee!!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  
                  ),
                ),
                
              ],
            ),
          ),
          Positioned(
            top: 120,
            //left: 0,
            child: Image.asset(
              "images/logo_t.png",
              width: size.width * 0.6,
            ),
          ),
          
          Container(
            margin:EdgeInsets.only(left: 20,right: 20),
            padding: EdgeInsets.only(top:350),
            child: GridView(children: [
              InkWell(
                onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage() ));
            },
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white.withOpacity(0.4),),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                    Image.asset("images/option_11.png",width: size.width * 0.3,),
                    SizedBox(height: 5,),
                    Text("Schedule Now!",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black,),),
                  ],
                  ),
                  ),
              ),
              InkWell(
                onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage() ));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white.withOpacity(0.4),),child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                    Image.asset("images/option_2.png",width: size.width * 0.3,),
                    SizedBox(height: 5,),
                    Text("Ingredients",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black,),),
                  ],),),
              ),
              InkWell(
                onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage() ));
            },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white.withOpacity(0.4),),child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                    Image.asset("images/option_33.png",width: size.width * 0.25,),
                    SizedBox(height: 8,),
                    Text("Upcomings",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black,),),
                  ],),),
              ),
              InkWell(
                onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage() ));
            },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white.withOpacity(0.4),),child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                    Image.asset("images/option_4.png",width: size.width * 0.3,),
                    //SizedBox(height: 5,),
                    Text("Favourites",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],),),
              ),

            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20),
          ),),

        ],
      ),
    );
  }
}