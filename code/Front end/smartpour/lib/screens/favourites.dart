// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import '../constant.dart';
import 'optionspage.dart';

class CardItem {
  final String title;
  final String Sugar;
  final String Coffee;

  const CardItem({
    required this.title,
    required this.Sugar,
    required this.Coffee,


  });
}
// ignore: use_key_in_widget_constructors
class Favorites extends StatefulWidget {
  
  @override
  _FavoriteView createState() => _FavoriteView();
}
  class _FavoriteView  extends State<Favorites>{
    final formKey = GlobalKey<FormState>();
    List<CardItem> items =[
      CardItem(
        title: "Morning Coffee",
        Sugar : "2",
        Coffee: "1",

      ),
      CardItem(
        title: "Evening Coffee",
        Sugar : "3",
        Coffee: "2",
      ),
      CardItem(
        title: "Default",
        Sugar : "1",
        Coffee: "1",

      ),
    ];
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
          SizedBox(
            height: 300,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (context,_)=>SizedBox(width: 20,),
              itemBuilder: (context,index)=> recipe(item: items[index]),
            ),) ,
            Positioned(bottom: 110,child: SizedBox(height: 60,width: 300,child: ElevatedButton(onPressed: () => _addRecipe(context),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0),),primary: Color(0xffB98C53),),
               child: Row(mainAxisAlignment: MainAxisAlignment.center,children:[IconButton(onPressed: () {},icon: Icon(Icons.add_outlined,color: Colors.white,size: 30.0,),),
                   Text("Add a new device",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),] ),),),
                  ),
            Positioned(bottom: 30,child: SizedBox(height: 60,width: 300,
              child: ElevatedButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (_) => OptionsPage(),),),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0),),primary: Color(0xffB98C53)),
               child: Text("Done",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),),),),
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
      SizedBox(height: 10,),
      Text(item.title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white,),),
      SizedBox(height: 15,), 
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(width: 50,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Sugar",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black,),),
              SizedBox(height: 15,),
              Text("Coffee",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black,),),
            ],
          ),
          SizedBox(width: 70,),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text(item.Sugar,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black,),),
              SizedBox(height: 15,),
              Text(item.Coffee,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black,),),
            ],
          ),
        ],
      ),
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
          actions: [
             ElevatedButton(onPressed:(){
               if(formKey.currentState!.validate()){Navigator.of(context).pop();}
               
             },style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0),),primary: Color(0xffB98C53)),
               child: Text("Done",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),)
          ],
        );
        },
    );
}