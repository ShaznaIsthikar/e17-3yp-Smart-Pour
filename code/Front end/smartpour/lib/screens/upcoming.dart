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
          SingleChildScrollView(
            child: Column(
             children:[
               //SizedBox(height: 40,),
               Container(alignment: Alignment.center,padding: EdgeInsets.only(top:10),child: Text("Upcomings",style: TextStyle(fontSize:50,fontWeight: FontWeight.bold,color: Colors.white,),),), 
               SizedBox(height: 50,),
               Container(margin:EdgeInsets.only(left: 20,right: 20),height: 150,padding: EdgeInsets.only(left:20,right: 10),width: double.infinity,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white.withOpacity(0.5),),
               child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [ Row(
                 children: [
                   Icon(Icons.calendar_today_outlined,size: 80,),
                   SizedBox(width: 20,),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [Text("Recipe",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                     SizedBox(height: 10,),
                     Text("Device",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                     SizedBox(height: 10,),
                     Text("User",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                     SizedBox(height: 10,),
                     Text("Date",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                     SizedBox(height: 10,),
                     Text("Time",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),],
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [Text(": Morning Coffee",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                     SizedBox(height: 10,),
                     Text(": Office",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                     SizedBox(height: 10,),
                     Text(": mishel@gmail.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                     SizedBox(height: 10,),
                     Text(": 2021/10/30",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                     SizedBox(height: 10,),
                     Text(": 8:00 PM",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                     
                     ],
                   )
                 ],
               )
               ],
               ),) ,
               SizedBox(height: 400,),

               SizedBox(height: 60,width: 300,child: ElevatedButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (_) => OptionsPage(),),),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0),),primary: Color(0xffB98C53)),
               child: Text("Next",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),),),
               ],),
          ),
          
          
        ],
      ),
    );
  }
}