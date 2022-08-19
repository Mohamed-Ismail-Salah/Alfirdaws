

import 'package:alfirdaws/screen/tasbih.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


import '../constants/constants.dart';
import 'alqablah.dart';
import 'alraayiysuh.dart';

class home extends StatefulWidget{
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentIndex=2;
  List<Widget> screen=[
    Alqablah(),
    Tasbih(),
    alraayiysuh(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        color: keybodycolor,
        backgroundColor:Colors.brown,
        onTap: (index){
          currentIndex=index;
          setState(() {

          });



        },
        items:<Widget>[
          Icon(  Icons.compass_calibration,size: 30,),
          Icon(  Icons.add_circle_outline,size: 30,),
          Icon(  Icons.home,size: 30,),
        ],),
      backgroundColor: keybodycolor,

      body:screen[currentIndex],

    );
  }
}