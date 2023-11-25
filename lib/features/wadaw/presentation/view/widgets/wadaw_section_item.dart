import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources_app/color_manager.dart';
import '../../../../../cubits/list_data/list_data_cubit.dart';

class WadawSectionItem extends StatelessWidget{

  const WadawSectionItem({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    List items = BlocProvider.of<ListDataCubit>(context).items;
    return GestureDetector(
      onTap: () {
        BlocProvider.of<ListDataCubit>(context).gitid(id);

        Navigator.pushNamed(
          context,
          "WadawDisplayDataView",
        );

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
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Text(

                  items[id]["name"],
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
