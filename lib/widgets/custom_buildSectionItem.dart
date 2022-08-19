

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class buildSectionItem extends StatefulWidget{
   String name;
   String location;
   var id;

  @override
   buildSectionItem({required this.name,required this.location,required this.id}){}

  @override
  State<buildSectionItem> createState() => _buildSectionItemState();
}

class _buildSectionItemState extends State<buildSectionItem> {
  Widget build(BuildContext context) {



   return
       GestureDetector(
       onTap: (){
         Navigator.pushNamed(context, "Display_data",arguments:{"name":widget.name, " location":widget.location,"id":widget.id});
       },
       child: Padding(
         padding: const EdgeInsets.all(7),
         child: Container(
           margin: const EdgeInsets.only(top: 12.0),
           width: double.infinity,
           height: 100,
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12.0),
               gradient: LinearGradient(
                   begin: Alignment.topRight,
                   end: Alignment.bottomLeft,
                   colors: [
                     Colors.brown.shade900,
                     Colors.brown.shade600,
                     Colors.brown.shade400,
                     Colors.brown.shade900,


                   ])),
           child: Center(
               child: Text(
                   widget.name  ,
                 style: TextStyle(
                   fontSize: 22.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
                 ),
               )
           ),
         ),
       ),
     );

  }
}
