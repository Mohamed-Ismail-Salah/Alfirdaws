import 'package:alfirdaws/core/resources_app/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cubits/list_data/list_data_cubit.dart';

class AzkarDisplayDataViewBody extends StatelessWidget{
  const AzkarDisplayDataViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List items = BlocProvider.of<ListDataCubit>(context).items;
    int? id = BlocProvider.of<ListDataCubit>(context).id;
    return  Column(
      mainAxisAlignment:MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              decoration: BoxDecoration(
                color: ColorManager.lightBrown,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3), // التحكم في موضع الظل
                  ),
                ],
              ),
              child: Text(
    "عدد مرات القراءة: ${items[id]["count"] == "" ? "1" : items[id]["count"]}",
                style: TextStyle(
                  fontSize: 25.0,

                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
,
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20,top: 30),
            child: Container(
              padding: const EdgeInsets.symmetric( horizontal: 10,vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: RichText(
                textAlign: TextAlign.justify,
                textDirection: TextDirection.rtl,
                text: TextSpan(
                    text:items[id]["content"],
                    style: const TextStyle(
                      fontFamily: 'Tajawal',
                      color: Colors.black,
                      fontSize: 25,
                    height: 1.5
                    )),
              ),
            ),
          )
    ]);
  }
}
