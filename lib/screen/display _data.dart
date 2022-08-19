
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/custom_text.dart';

class Display_data extends StatefulWidget{
  @override
  State<Display_data> createState() => _Display_dataState();
}

class _Display_dataState extends State<Display_data> {

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    var id =arg["id"];
  String locaion= arg[" location"];

   return Scaffold(
     backgroundColor: keybodycolor,
     appBar: AppBar(
       title: Text(arg["name"]),
     ),
     body:SingleChildScrollView(
       scrollDirection: Axis.vertical,child: Custom_Text(  locationdata: locaion, id: id)
     ),
   );
  }
}