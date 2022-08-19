import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'custom_buildSectionItem.dart';

class Custom_data  extends StatefulWidget{

  String locationdata;
  Custom_data(   {required this.locationdata});
  @override
  State<Custom_data> createState() => _Custom_dataState( );
}

class _Custom_dataState extends State<Custom_data> {

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

     return ListView.builder(
       physics: BouncingScrollPhysics(),
       itemBuilder: (BuildContext context, int index) => buildSectionItem(


         name: items[index]["name"], location: widget.locationdata, id: index,
         
       ),

       itemCount: items.length,

     );

  }
}