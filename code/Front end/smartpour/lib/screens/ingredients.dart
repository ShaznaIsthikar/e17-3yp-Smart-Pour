import 'package:flutter/material.dart';
class Ingredients extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            height: size.height,
            width: size.height,
            color: Colors.black.withOpacity(0.5),
            child: Image.asset("images/ingrediet_bg.jpeg", fit: BoxFit.cover),
          ),
          Container(
            alignment: Alignment.topLeft,
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
            padding: EdgeInsets.only(top:90),
            child: Column(
              children: [
                 Container(alignment:Alignment.center ,child: Text("Ingredients",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white,),),),
                 SizedBox(height: 60,),
                 Container(alignment: Alignment.topLeft,margin:EdgeInsets.only(left: 10,right: 10),padding: EdgeInsets.only(top: 10,left: 10 ),height: 200,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white.withOpacity(0.4),),
                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                     Text("Now Available",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.black),),
                     SizedBox(height:6),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Column(
                           children:<Widget> [
                            Container(
                                height: 90,width: 90,padding:const EdgeInsets.all(25),decoration: BoxDecoration(color: Colors.white60,borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(image: AssetImage("images/Sugar.jpg"),fit: BoxFit.fitWidth,),),),
                              SizedBox(height:8),
                              Text("Sugar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.black),),
                              Text("8",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.black),),

                           ],
                         ),
                         Column(
                           children:<Widget> [
                              Container(
                                height: 90,width: 90,padding:const EdgeInsets.all(25),decoration: BoxDecoration(color: Colors.white60,borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(image: AssetImage("images/coffeepowder.png"),fit: BoxFit.cover,),),),
                              SizedBox(height:5),
                              Text("Coffee",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.black),),
                              Text("6",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.black),),

                           ],
                         ),
                         Column(
                           children:<Widget> [
                              Container(
                               height: 90,width: 90,padding:const EdgeInsets.all(25),decoration: BoxDecoration(color: Colors.white60,borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(image: AssetImage("images/glass.png"),fit: BoxFit.cover,),),),
                              SizedBox(height:5),
                              Text("Water",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.black),),
                              Text("2",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.black),),

                           ],
                         ),
                       ],
                     )
                     ],
                 ),),
                 SizedBox(height: 40,),
                 Container(alignment: Alignment.topLeft,margin:EdgeInsets.only(left: 10,right: 10),padding: EdgeInsets.only(top: 10,left: 10 ),height: 200,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white.withOpacity(0.4),),
                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                     Text("After Reservation",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.black),),
                     SizedBox(height:6),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Column(
                           children:<Widget> [
                            Container(
                                height: 90,width: 90,padding:const EdgeInsets.all(25),decoration: BoxDecoration(color: Colors.white60,borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(image: AssetImage("images/Sugar.jpg"),fit: BoxFit.fitWidth,),),),
                              SizedBox(height:8),
                              Text("Sugar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.black),),
                              Text("4",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.black),),

                           ],
                         ),
                         Column(
                           children:<Widget> [
                              Container(
                                height: 90,width: 90,padding:const EdgeInsets.all(25),decoration: BoxDecoration(color: Colors.white60,borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(image: AssetImage("images/coffeepowder.png"),fit: BoxFit.cover,),),),
                              SizedBox(height:5),
                              Text("Coffee",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.black),),
                              Text("2",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.black),),

                           ],
                         ),
                         Column(
                           children:<Widget> [
                              Container(
                               height: 90,width: 90,padding:const EdgeInsets.all(25),decoration: BoxDecoration(color: Colors.white60,borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(image: AssetImage("images/glass.png"),fit: BoxFit.cover,),),),
                              SizedBox(height:5),
                              Text("Water",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.black),),
                              Text("1",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.black),),

                           ],
                         ),
                       ],
                     )
                     ],
                 ),),
                 SizedBox(height: 50,),
                 Container(alignment: Alignment.center,margin:EdgeInsets.only(left: 10,right: 10),padding: EdgeInsets.only(top: 8,left: 8),height: 80,width: 200,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white.withOpacity(0.4),),child: Column(
                   children: [
                     Text("Last Refilled",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Colors.black),),
                     SizedBox(height: 10,),
                     Text("21 /10 / 2021 | 08:40 PM",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.white),),
                   ],
                 ),),
              ],
            ),
          )
        ],
        
          ),
          );
  

  }
}