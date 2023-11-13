import 'package:alfirdaws/core/resources_app/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/list_data/list_data_cubit.dart';

class CustomQuran extends StatelessWidget {
  const CustomQuran({super.key});
  @override
  Widget build(BuildContext context) {
    int? id = BlocProvider.of<ListDataCubit>(context).id;
    List? items = BlocProvider.of<ListDataCubit>(context).items;
    return Column(children: [
      Stack(
        children: [
          Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 11),
                child: Text(
                  "سورة ${items[id]["name"]}",
                  style: TextStyle(fontSize: 25, color:Colors.black),
                ),
              ),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/islamic_text_box.png")
                      as ImageProvider,
                      fit: BoxFit.cover))),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 5,top: 10),

        child: Text(
          "   بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ    ",
          style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w800,
              fontFamily:'Katibeh' ,
              height: 2
          ),
        ),
      ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: RichText(
    textAlign: TextAlign.justify,
    textDirection: TextDirection.rtl,
    text: TextSpan(
    text: items[id]["content"],
    style: const TextStyle(
    fontFamily: 'Katibeh',
    color: Colors.black,
    fontSize: 35,
    fontWeight: FontWeight.w300,
    height: 1.5,
    overflow: TextOverflow.ellipsis,
    )),

                ),
              )

    ]);
  }
}
