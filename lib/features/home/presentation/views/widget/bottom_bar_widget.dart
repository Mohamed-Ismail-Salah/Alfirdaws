import 'package:alfirdaws/core/resources_app/values_manager.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/resources_app/color_manager.dart';
import '../../../../../core/resources_app/constants_manager.dart';
import '../../manger/home_cubit/home_cubit.dart';

class BottomBarWidget extends StatelessWidget{
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: AppConstants.index,
      color:  ColorManager.secondColor,
      backgroundColor: ColorManager.primary,
      onTap: (index) {
        BlocProvider.of<HomeCubit>(context).getBody(index);
      },
      items: const <Widget>[
        Icon(
          Icons.compass_calibration,
          size: AppSize.s30,
        ),
        Icon(
          Icons.add_circle_outline,
          size: AppSize.s30,
        ),
        Icon(
          Icons.home,
          size: AppSize.s30,
        ),
      ],
    );
  }

}