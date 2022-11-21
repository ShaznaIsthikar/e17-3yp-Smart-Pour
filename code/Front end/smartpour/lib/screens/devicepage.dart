// ignore_for_file: prefer_const_constructors
import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'optionspage.dart';

// ignore: use_key_in_widget_constructors
class DevicePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  Future<List<Device>> _getDevices() async {
    var url =
        Uri.parse("http://10.0.2.2:8080/smartpour/machine/getAllmachines");
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    List<Device> devices = [];

    for (var u in data) {
      Device device = Device(u["machinename"], u["macaddress"], u["status"]);

      devices.add(device);
    }
    return devices;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
  
        children: [
          Container(
                  color:Colors.white,
                  height: 60,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top: 50, bottom: 10),
                  child: Text(
                    "Devices",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
          Container(
          child: FutureBuilder(
            future: _getDevices(),
            builder: (BuildContext context, AsyncSnapshot snapshot){
              print(snapshot.data);
              if(snapshot.data == null){
                return Container(
                  child: Center(
                    child: Text("Loading...")
                  )
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(snapshot.data[index].machinename),
                      subtitle: Text(snapshot.data[index].machinecode),
                      onTap: (){

                       Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => OptionsPage(),
                      )
                       );
                  

                      },
                    );
                  },
                );
              }
            },
          ),
        ),
        ],
      )
      );
      // body: Stack(
      //   alignment: Alignment.center,
      //   children: [
      //     SizedBox(
      //       height: size.height,
      //       width: size.height,
      //       child: Image.asset("images/bg_log_sign.jpeg", fit: BoxFit.cover),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(40),
      //       alignment: Alignment.center,
      //       decoration: BoxDecoration(
      //         gradient: LinearGradient(
      //           begin: Alignment.topCenter,
      //           end: Alignment.bottomCenter,
      //           colors: [
      //             Theme.of(context).primaryColor,
      //             Theme.of(context).primaryColor.withOpacity(0.4)
      //           ],
      //         ),
      //       ),
      //     ),
          // Container(
          //         color:Colors.white,
          //         height: 60,
          //         alignment: Alignment.topCenter,
          //         padding: EdgeInsets.only(top: 50, bottom: 10),
          //         child: Text(
          //           "Devices",
          //           style: TextStyle(
          //             fontSize: 50,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.white,
          //           ),
          //         ),
          //       ),
          //       Container(
          //         alignment: Alignment.topCenter,
          //         height: 60,
          //         width: 300,
          //         child: ElevatedButton(
          //           onPressed: () => _addDevice(context),
          //           style: ElevatedButton.styleFrom(
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(30.0),
          //             ),
          //             primary: Color(0xffB98C53),
          //           ),
          //           child: Row(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 IconButton(
          //                   onPressed: () {},
          //                   icon: Icon(
          //                     Icons.add_outlined,
          //                     color: Colors.white,
          //                     size: 30.0,
          //                   ),
          //                 ),
          //                 Text(
          //                   "Add a new device",
          //                   style: TextStyle(
          //                     fontSize: 20,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.white,
          //                   ),
          //                 ),
          //               ]),
          //         ),
          //       ),
          //       SizedBox(
          //         height: 20,
          //       ),
          //       Container(
          //         alignment: Alignment.bottomCenter,
          //         padding: EdgeInsets.only(top: 50, bottom: 10),
          //         height: 60,
          //         width: 300,
          //         child: ElevatedButton(
          //           onPressed: () => Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //               builder: (_) => OptionsPage(),
          //             ),
          //           ),
          //           style: ElevatedButton.styleFrom(
          //               shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(30.0),
          //               ),
          //               primary: Color(0xffB98C53)),
          //           child: Text(
          //             "Next",
          //             style: TextStyle(
          //               fontSize: 20,
          //               fontWeight: FontWeight.bold,
          //               color: Colors.white,
          //             ),
          //           ),
          //         ),
          //       ),
          // SingleChildScrollView(
          //   child: Column(
          //     children: [
                //SizedBox(height: 40,),
                
                //SizedBox(height: 20,),
                //            Container(margin:EdgeInsets.only(left: 20,right: 20),height: 120,padding: EdgeInsets.only(left:10,right: 10),width: double.infinity,
                //            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white.withOpacity(0.5),),
                //            child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [ Row(
                //              children: [
                //                Container(
                //                             height: 80,width: 80,margin: EdgeInsets.all(5),decoration: BoxDecoration(color: Colors.white60,borderRadius: BorderRadius.circular(10),
                //                             image: DecorationImage(image: AssetImage("images/device.jpeg"),fit: BoxFit.fitWidth,),),),

                //                SizedBox(width: 5,),
                //                Column(
                //                  mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                //                  children: const [Text("Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                //                  SizedBox(height: 10,),
                //                  Text("Device code",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                //                  SizedBox(height: 10,),
                //                  Text("Status",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),],
                //                ),
                //                Column(
                //                  mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                //                  children: [Text(": Office",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                //                  SizedBox(height: 10,),
                //                  Text(": 30:AE:A4:07:0D:64",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                //                  SizedBox(height: 10,),
                //                  Row(
                //                    children: [
                //                      Text(": Online",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
                //                      SizedBox(width: 5,),
                //                      Icon(Icons.circle_rounded,color: Colors.lightGreenAccent[400],size: 20,)
                //                    ],
                //                  )],
                //                )
                //              ],
                //            )
                //            ],
                //            ),) ,
          

                
                
                
          //     ],
          //   ),
          // ),
      //   ],
      // ),
   // );
  }

  _addDevice(BuildContext context) => showDialog(
        context: context,
        builder: (context) {
          final TextEditingController _devicenameController =
              TextEditingController();
          final TextEditingController _devicecodeController =
              TextEditingController();
          return AlertDialog(
            title: Text(
              "Add Device",
            ),
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
                    validator: (value) {
                      return value!.isNotEmpty ? null : "*Required";
                    },
                  ),
                  TextFormField(
                    key: Key("Mac"),
                    controller: _devicecodeController,
                    decoration: InputDecoration(
                        hintText: 'Enter the MAC',
                        icon: Icon(Icons.coffee_maker)),
                    validator: (value) {
                      return value!.isNotEmpty ? null : "*Required";
                    },
                  ),
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final response = await http.post(
                      Uri.parse(
                          'http://10.0.2.2:8080/smartpour/machine/addmachine'),
                      headers: {'Content-Type': 'application/json'},
                      body: jsonEncode(<String, String>{
                        "machinename": _devicenameController.text,
                        "macaddress": _devicecodeController.text,
                      }),
                    );
                    var res = jsonDecode(response.body);
                    if (res["success"] == true) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DevicePage()));
                      print(res["id"]);
                    } else {
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: const Text("Alerts!"),
                          content: const Text("This machine already exists"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(ctx).pop();
                              },
                              child: Container(
                                padding: const EdgeInsets.all(14),
                                child: const Text("okay"),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    //print(res["success"]);

                  }
                },
                key: Key("adddevice"),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    primary: Color(0xffB98C53)),
                child: Text(
                  "Done",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          );
        },
      );
}

class Device {
  final String machinename;
  final String machinecode;
  final String status;

  Device(this.machinename, this.machinecode, this.status);
}
