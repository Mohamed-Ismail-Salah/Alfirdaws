import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/list_data/list_data_cubit.dart';


class Custom_Text extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    List items=BlocProvider.of<ListDataCubit>(context).items;
    int? id =BlocProvider.of<ListDataCubit>(context).id;
    return  Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
                child: Text( items[id]["name"]
                  ,style: TextStyle(fontSize: 30,color: Colors.brown),
                )
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 15,left: 10),
            child: RichText(
              textDirection: TextDirection.rtl,
              text:TextSpan( text:items[id]["content"] ,
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