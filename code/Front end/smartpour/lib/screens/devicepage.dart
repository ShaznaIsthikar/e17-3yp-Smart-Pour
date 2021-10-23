import 'package:flutter/material.dart';

import '../constant.dart';
import 'optionspage.dart';
 // ignore: prefer_const_constructors
class  DevicePage extends StatelessWidget {
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
          Container(
             child: Column(
              children:[
                SizedBox(height: 40,),
                Container(alignment: Alignment.center,padding: EdgeInsets.only(top:10),child: Text("Devices",style: TextStyle(fontSize:50,fontWeight: FontWeight.bold,color: Colors.white,),),), 
                SizedBox(height: 20,),
                Container(margin:EdgeInsets.only(left: 20,right: 20),height: 500,padding: EdgeInsets.only(left:10,right: 10),width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white.withOpacity(0.5),),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                  
                  
                ],
                ),) ,
                SizedBox(height: 20,),
                Positioned(bottom: 100,child: SizedBox(height: 60,width: 300,child: FlatButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),color: primaryColor,
                onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (_) => DevicePage(),),),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,children:[IconButton(onPressed: () {},icon: Icon(Icons.add_outlined,color: Colors.white,size: 30.0,),),
                    Text("Add a new device",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),] ),),),
                ),
                SizedBox(height: 20,),
                Positioned(
                child: SizedBox(height: 60,width: 300,child: FlatButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),color: primaryColor,
                onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (_) => OptionsPage(),),),
                child: Text("Done",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),),),),
                ),
                ],),
              ),
        ],
      ),
    );
  }
}