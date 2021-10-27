// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'optionspage.dart';

// ignore: use_key_in_widget_constructors
class  DevicePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  
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
               SizedBox(height: 60,width: 300,child: ElevatedButton(onPressed: () => _addDevice(context),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0),),primary: Color(0xffB98C53),),
               child: Row(mainAxisAlignment: MainAxisAlignment.center,children:[IconButton(onPressed: () {},icon: Icon(Icons.add_outlined,color: Colors.white,size: 30.0,),),
                   Text("Add a new device",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),] ),),),
                            
               SizedBox(height: 20,),
               SizedBox(height: 60,width: 300,child: ElevatedButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (_) => OptionsPage(),),),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0),),primary: Color(0xffB98C53)),
               child: Text("Done",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),),),
               ],),
          ),
        ],
      ),
    );
  }

  
  _addDevice(BuildContext context) => showDialog(context: context,builder: (context) {
    final TextEditingController _devicenameController = TextEditingController();
    final TextEditingController _macController = TextEditingController(); 
        return AlertDialog(
          title: Text("Add Device",),
          content: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _devicenameController,
                  decoration: InputDecoration(
                      hintText: 'Enter the Device Name',
                      icon: Icon(Icons.coffee_maker)),
                    validator: (value){
                      return value!.isNotEmpty ? null :"*Required";
                    },
                ),
                TextFormField(
                  controller:_macController,
                  decoration: InputDecoration(
                      hintText: 'Enter the MAC',
                      icon: Icon(Icons.coffee_maker)),
                    validator: (value){
                       return value!.isNotEmpty ? null :"*Required";
                    },
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton(onPressed:(){
               if(_formKey.currentState!.validate()){Navigator.of(context).pop();}
               
             },style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0),),primary: Color(0xffB98C53)),
               child: Text("Done",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),)
          ],
        );
      },
    );
}