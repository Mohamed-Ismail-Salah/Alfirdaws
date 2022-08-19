
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/custom_data.dart';

class List_of_data extends StatefulWidget {
  @override
  State<List_of_data> createState() => _List_of_dataState();
}

class _List_of_dataState extends State<List_of_data> {
  @override
  void initState() {
    super.initState();
  }

  late String location_datalist;
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;




   switch (arg["name"] ) {
     case 'قران كريم':  { location_datalist="assets/localdatabase/Quran.json";}
  break;

     case 'لاذكار' : location_datalist="assets/localdatabase/sections_db.json";
 break;
     case 'الصلا ه' : location_datalist="assets/localdatabase/alsalah.json";
     break;
     case  'الوضوء' : location_datalist="assets/localdatabase/alwudu.json";
     break;
     case  'اسماء الله الحسنى' : location_datalist="assets/localdatabase/Names_Of_Allah.json";
     break;
    }


    return Scaffold(
        backgroundColor: keybodycolor,
        appBar: AppBar(
          title: Text(arg["name"]),
        ),
        body: Custom_data(locationdata: location_datalist));
  }
}
