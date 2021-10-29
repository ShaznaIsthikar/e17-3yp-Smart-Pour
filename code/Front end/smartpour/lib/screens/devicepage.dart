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
               //SizedBox(height: 40,),
               Container(alignment: Alignment.center,padding: EdgeInsets.only(top:10),child: Text("Devices",style: TextStyle(fontSize:50,fontWeight: FontWeight.bold,color: Colors.white,),),), 
               SizedBox(height: 20,),
               Container(margin:EdgeInsets.only(left: 20,right: 20),height: 120,padding: EdgeInsets.only(left:10,right: 10),width: double.infinity,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white.withOpacity(0.5),),
               child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [ Row(
                 children: [
                   Container(
                                height: 80,width: 80,margin: EdgeInsets.all(5),decoration: BoxDecoration(color: Colors.white60,borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage("images/device.jpeg"),fit: BoxFit.fitWidth,),),),

                   SizedBox(width: 5,),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [Text("Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                     SizedBox(height: 10,),
                     Text("Mac Address",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                     SizedBox(height: 10,),
                     Text("Status",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),],
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [Text(": Office",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                     SizedBox(height: 10,),
                     Text(": 30:AE:A4:07:0D:64",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                     SizedBox(height: 10,),
                     Row(
                       children: [
                         Text(": Online",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                         SizedBox(width: 5,),
                         Icon(Icons.circle_rounded,color: Colors.lightGreenAccent[400],size: 20,)
                       ],
                     )],
                   )
                 ],
               )
               ],
               ),) ,
               SizedBox(height: 350,),
               SizedBox(height: 60,width: 300,child: ElevatedButton(onPressed: () => _addDevice(context),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0),),primary: Color(0xffB98C53),),
               child: Row(mainAxisAlignment: MainAxisAlignment.center,children:[IconButton(onPressed: () {},icon: Icon(Icons.add_outlined,color: Colors.white,size: 30.0,),),
                   Text("Add a new device",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),] ),),),
                            
               SizedBox(height: 20,),
               SizedBox(height: 60,width: 300,child: ElevatedButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (_) => OptionsPage(),),),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0),),primary: Color(0xffB98C53)),
               child: Text("Next",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),),),
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
                  key: Key("Device Name"),
                  controller: _devicenameController,
                  decoration: InputDecoration(
                      hintText: 'Enter the Device Name',
                      icon: Icon(Icons.coffee_maker)),
                    validator: (value){
                      return value!.isNotEmpty ? null :"*Required";
                    },
                ),
                TextFormField(
                  key: Key("Mac"),
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
               
             },key: Key("adddevice"),
             style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0),),primary: Color(0xffB98C53)),
               child: Text("Done",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),)
          ],
        );
      },
    );
}