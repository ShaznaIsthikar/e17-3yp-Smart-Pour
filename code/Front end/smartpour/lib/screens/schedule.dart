// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:smartpour/screens/optionspage.dart';
// ignore: use_key_in_widget_constructors

class Schedule extends StatefulWidget {
  @override
  _Schedule createState() => _Schedule();
}
class  _Schedule extends State<Schedule> {
  final items =["Default","Morning Coffee","Evening Coffee"];
  String? value;
  DateTime? date;
  TimeOfDay? time;

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
            child: Image.asset("images/bg_option.jpeg", fit: BoxFit.cover),
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
                  Theme.of(context).primaryColor.withOpacity(0.5)
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
             children:[
               SizedBox(height: 60,),
               Container(alignment: Alignment.center,padding: EdgeInsets.only(top:10),child: Text("Schedule Now !",style: TextStyle(fontSize:40,fontWeight: FontWeight.bold,color: Colors.white,),),), 
               Container(alignment: Alignment.center,padding: EdgeInsets.only(top:5),child: Image.asset("images/logo_t.png",width: size.width * 0.6,),),
               SizedBox(height: 10,),
               Container(margin:EdgeInsets.only(left: 20,right: 20),height: 300,padding: EdgeInsets.only(left:20,right: 10),width: double.infinity,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white.withOpacity(0.5),),
               child: Column(children: [ 
                SizedBox(height: 20,),
                 Row(children: [
                   Text("Recipe",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black,),),
                   SizedBox(width: 30,),
                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),border: Border.all(color: Colors.black,width: 2)),
                     child: DropdownButtonHideUnderline(
                       child: DropdownButton<String>(
                               value: value,
                               iconSize: 36,
                               icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                               items: items.map(buildMenuItem).toList(),
                               onChanged: (value) => setState(()=> this.value=value),
                             ),
                     ),
                   ),
                 ],),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Date",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black,),),
                    SizedBox(width: 70,),
                    ElevatedButton(onPressed: () => pickDate(context),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(12.0),),primary: Colors.white),
                 child: Text(getDateText(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,),),),],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Time",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black,),),
                    SizedBox(width: 63,),
                    ElevatedButton(onPressed: () => pickTime(context),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(12.0),),primary: Colors.white),
                 child: Text(getTimeText(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,),),),],
                )
               ],
               ),) ,
               SizedBox(height: 40,),
          
               SizedBox(height: 60,width: 300,child: ElevatedButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (_) => OptionsPage(),),),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0),),primary: Color(0xffB98C53)),
               child: Text("Done",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),),),
               ],),
          ),
          
        ],
      ),
    );
  }
  DropdownMenuItem<String> buildMenuItem(String item) =>
    DropdownMenuItem(value: item,
    child: Text(item,style:  TextStyle(fontSize: 20,color: Colors.black,),),);

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (newDate == null) return;

    setState(() => date = newDate);
  }
  Future pickTime(BuildContext context) async {
    final initialTime = TimeOfDay(hour: 9, minute: 0);
    final newTime = await showTimePicker(
      context: context,
      initialTime: time ?? initialTime,
    );

    if (newTime == null) return;

    setState(() => time = newTime);
  }
  String getTimeText() {
    if (time == null) {
      return 'Select Time';
    } else {
      final hours = time!.hour.toString().padLeft(2, '0');
      final minutes = time!.minute.toString().padLeft(2, '0');

      return '$hours:$minutes';
    }
  }
  String getDateText() {
    if (date == null) {
      return 'Select Date';
    } else {
      //return DateFormat('MM/dd/yyyy').format(date);
      return '${date!.month}/${date!.day}/${date!.year}';
    }
  }
}