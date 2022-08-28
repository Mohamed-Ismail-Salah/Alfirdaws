
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/list_data/list_data_cubit.dart';
import '../widgets/custom_quran_detils.dart';

class Quran extends  StatelessWidget{

  Widget build(BuildContext context) {
    List items=BlocProvider.of<ListDataCubit>(context).items;
    int? id =BlocProvider.of<ListDataCubit>(context).id;
    return Scaffold(

      backgroundColor: Colors.brown.shade200,
      appBar: AppBar(

        title:  Stack(

          children: [

            Container(
                alignment: Alignment.center,
                child:Text( items[id]["name"],style: TextStyle(fontSize: 29,color: Color(0xffBD9022)),),
                height:200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/—Pngtree—luxury gold vintage title frame_7415773.png")as ImageProvider
                        ,   fit:BoxFit.cover)

                )

            ),

          ],
        ),
      ),


      body:SingleChildScrollView(
          scrollDirection: Axis.vertical,child: Custom_Quran( )
      ),
    );
  }


  }