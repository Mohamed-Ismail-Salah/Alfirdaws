import 'package:alfirdaws/core/resources_app/color_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/list_data/list_data_cubit.dart';

class buildSectionItem extends StatelessWidget {
  int id;

  buildSectionItem({required this.id});
  @override
  Widget build(BuildContext context) {
    List items = BlocProvider.of<ListDataCubit>(context).items;
    String? title = BlocProvider.of<ListDataCubit>(context).pageTitle;

    return GestureDetector(
      onTap: () {
        BlocProvider.of<ListDataCubit>(context).gitid(id);
        if (title == 'قران كريم') {
          Navigator.pushNamed(
            context,
            "Quran",
          );
        } else {
          Navigator.pushNamed(
            context,
            "Display_data",
          );
        }
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
                    ColorManager.darkBrown,
                    ColorManager.primary,
                    ColorManager.primary,
                    ColorManager.darkBrown,
                  ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top:10),
                  child: Text(

                    items[id]["name"],
                    style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                    ),

                  ),
                ),
              ),
              Image.asset(
                items[id]["Descent"] == "مكية"
                ? "assets/images/kaaba.png"
                : "assets/images/mosque.png",
                width: 50,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
