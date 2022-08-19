import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tasbih extends StatefulWidget{
  @override
  State<Tasbih> createState() => _TasbihState();
}

class _TasbihState extends State<Tasbih> {
  int count=0;
  Icon repeat =Icon(Icons.repeat);
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
 children: [
   Center(
     child: Text("$count ",style: TextStyle(
       fontSize:90,
       color: Colors.white
     ),),
   ),
   SizedBox(height: 30,),
   Center(
     child: Text("عددالتسبيح",style: TextStyle(
         fontSize:50,
         color: Colors.white
     ),),
   ),

   SizedBox(height: 40,),

   ElevatedButton(
        style: ElevatedButton.styleFrom(
    primary: Colors.brown,
          fixedSize:Size(170,50),
          shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)),
    ),
     child: Text('سبح', style: TextStyle(fontSize: 30.0),),
     onPressed: () {
       count++;
       setState(() {

       });
     },
   ),
   SizedBox(height: 30,),

   ElevatedButton(
     style: ElevatedButton.styleFrom(
       primary: Colors.brown,
       fixedSize:Size(170,50),
       shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10)),
     ),

     child: Text('اعاده', style: TextStyle(fontSize: 30.0),),
     onPressed: () {
       count=0;
       setState(() {

       });
     },
   ),
 ],
    );
  }
}