import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Custom_Text extends StatefulWidget{

   String locationdata;
   var id;
  Custom_Text({required this.locationdata ,required this.id}){}

  @override
  State<Custom_Text> createState() => _Custom_TextState();
}

class _Custom_TextState extends State<Custom_Text> {
   Future<void> readJson() async {

     final String response = await rootBundle.loadString(widget.locationdata);
     final data = await json.decode(response);
     setState(() {
       items = data["chapters"];
     });

   }

   List items = [];

   void initState() {
     super.initState();
     readJson();
   }

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
                child: Text( items[widget.id]["name"]
                  ,style: TextStyle(fontSize: 30,color: Colors.brown),
                )
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 15,left: 10),
            child: RichText(
              textDirection: TextDirection.rtl,
              text:TextSpan( text:items[widget.id]["content"] ,
              style: TextStyle(
                fontFamily: 'Tajawal',
                color: Colors.black
                    ,fontSize: 25,
              )
              )
              ,

            ),
          )
        ]
    );
  }
}