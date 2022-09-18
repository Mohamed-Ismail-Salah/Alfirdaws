import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/list_data/list_data_cubit.dart';

class Custom_Quran extends StatelessWidget {
  Widget build(BuildContext context) {
    int? id = BlocProvider.of<ListDataCubit>(context).id;
    List? items = BlocProvider.of<ListDataCubit>(context).items;
    return Column(children: [
      Stack(
        children: [
          Container(
              alignment: Alignment.center,
              child: Text(
                items[id]["name"],
                style: TextStyle(fontSize: 45, color:Colors.brown,fontWeight:FontWeight.bold ),
              ),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/—Pngtree—luxury gold vintage title frame_7415773.png")
                      as ImageProvider,
                      fit: BoxFit.cover))),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 10),

        child: Text(
          "   بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ    ",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.brown.shade700,
              height: 2),
        ),
      ),
      RichText(
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        text: TextSpan(
            text: items[id]["content"],
            style: TextStyle(
              fontFamily: 'Tajawal',
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.w500,
              height: 1.5,
              overflow: TextOverflow.ellipsis,
            )),
      )
    ]);
  }
}
