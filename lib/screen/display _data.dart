
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constants/constants.dart';
import '../cubits/list_data/list_data_cubit.dart';
import '../widgets/custom_text.dart';

class Display_data extends StatelessWidget{

  Widget build(BuildContext context) {
    List items=BlocProvider.of<ListDataCubit>(context).items;
    int? id =BlocProvider.of<ListDataCubit>(context).id;
   return Scaffold(
     backgroundColor: keybodycolor,
     appBar: AppBar(
       title: Text( items[id]["name"]),
     ),

     body:SingleChildScrollView(
       scrollDirection: Axis.vertical,child: Custom_Text( )
     ),
   );
  }
}