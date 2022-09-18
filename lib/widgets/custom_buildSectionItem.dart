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
                    Colors.brown.shade900,
                    Colors.brown.shade600,
                    Colors.brown.shade400,
                    Colors.brown.shade900,
                  ])),
          child: Center(
              child: Text(
            items[id]["name"],
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
