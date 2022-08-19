
import 'package:alfirdaws/screen/display%20_data.dart';
import 'package:alfirdaws/screen/home.dart';
import 'package:alfirdaws/screen/list_of_data.dart';
import 'package:flutter/material.dart';


import 'constants/constants.dart';

void main() {
  runApp(MyApp());
}
 class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return MaterialApp(
 routes: {
   "home": (context) =>home() ,
   "list_of_data":(context) => List_of_data() ,
   "Display_data":(context) => Display_data(),

 },
   initialRoute:'home' ,


  theme: ThemeData(
    appBarTheme:AppBarTheme(
      color: keyAppbarcolor,
      titleTextStyle: TextStyle(fontSize: 30,),
        centerTitle: true,

    ),
     fontFamily:'Tajawal'


  ),
);

  }

 }