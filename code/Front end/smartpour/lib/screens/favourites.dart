import 'dart:async';

import 'package:flutter/material.dart';

import '../constant.dart';
import 'optionspage.dart';

class CardItem {
  final String title;
  final String Name;

  const CardItem({
    required this.title,
    required this.Name,

  });
}
class Favorites extends StatefulWidget {
  
  @override
  _FavoriteView createState() => _FavoriteView();
}
  class _FavoriteView  extends State<Favorites>{
    final formKey = GlobalKey<FormState>();
    List<CardItem> items =[
      CardItem(
        title: "Morning Coffee",
        Name : "Mishel",

      ),
      CardItem(
        title: "Evening Coffee",
        Name : "Mishel",

      ),
      CardItem(
        title: "Regular Coffee",
        Name : "Mishel",

      ),
    ];
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
            child: Image.asset("images/Favourite_bg.jpeg", fit: BoxFit.cover),
          ),
          Container(
            //padding: EdgeInsets.all(40),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor.withOpacity(0.6)
                ],
              ),
            ),
          ),
          Positioned(
            top: 80,
            child: Text(
              "Favorites",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 170,
            child: Text(
              "Choose your favourite recipe",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: primaryColor,
              ),
            ),
          ),
          Container(
            height: 300,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (context,_)=>SizedBox(width: 20,),
              itemBuilder: (context,index)=> recipe(item: items[index]),
            ),) ,
            Positioned(bottom: 110,child: SizedBox(height: 60,width: 300,child: FlatButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),color: primaryColor,
                  onPressed: () => _addRecipe(context),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,children:[IconButton(onPressed: () {},icon: Icon(Icons.add_outlined,color: Colors.white,size: 30.0,),),
                      Text("Add a new Recipe",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),] ),),),
                  ),
            Positioned(bottom: 30,child: SizedBox(height: 60,width: 300,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: primaryColor,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => OptionsPage(),
                  ),
                ),
                child: Text(
                  "Okay",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget recipe({
    required CardItem item,
  }
  ) => Container(
    width: 250,
    height: 320,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white.withOpacity(0.4),),
    child: Column(children: [
      Image.asset("images/Recipe.jpeg",height: 160,width: 250,fit: BoxFit.cover,),
      Text(item.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,),),
      Text(item.Name),
    ],),
  );

  _addRecipe(BuildContext context) => showDialog(context: context,builder: (context) {
    final TextEditingController _titleController = TextEditingController();
    final TextEditingController _sugarController = TextEditingController();
    final TextEditingController _coffeeController = TextEditingController(); 
        return AlertDialog(
          title: Text("Add Recipe",),
          content: Form(
            key: formKey,
            child: Container(
              //decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white.withOpacity(0.5),),
              //width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: _titleController,
                    decoration: InputDecoration(
                        hintText: 'Title',
                        icon: Icon(Icons.coffee_maker)),
                      validator: (value){
                        return value!.isNotEmpty ? null :"*Required";
                      },
                  ),
                  TextFormField(
                    controller:_sugarController,
                    decoration: InputDecoration(
                        hintText: 'Sugar Amount',
                        icon: Icon(Icons.coffee_maker)),
                      validator: (value){
                         return value!.isNotEmpty ? null :"*Required";
                      },
                  ),
                  TextFormField(
                    controller:_coffeeController,
                    decoration: InputDecoration(
                        hintText: 'Coffee Amount',
                        icon: Icon(Icons.coffee_maker)),
                      validator: (value){
                         return value!.isNotEmpty ? null :"*Required";
                      },
                  ),
                ],
              ),
            ),
          ),
          actions: [
             FlatButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),color: primaryColor,
             onPressed:(){
               if(formKey.currentState!.validate()){Navigator.of(context).pop();}
               
             },
             child: Text("Done",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),),),
          ],
        );
        },
    );
}