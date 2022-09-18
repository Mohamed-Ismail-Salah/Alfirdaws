import 'package:alfirdaws/cubits/home_cubit/home_cubit.dart';
import 'package:alfirdaws/cubits/home_cubit/home_state.dart';
import 'package:alfirdaws/screen/tasbih.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constants/constants.dart';
import 'alqablah.dart';
import 'alraayiysuh.dart';

class home extends StatelessWidget {
  @override
  List<Widget> screen = [
    Alqablah(),
    Tasbih(),
    alraayiysuh(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: 2,
          color: keybodycolor,
          backgroundColor: Colors.brown,
          onTap: (index) {
            BlocProvider.of<HomeCubit>(context).getbody(index);
          },
          items: <Widget>[
            Icon(
              Icons.compass_calibration,
              size: 30,
            ),
            Icon(
              Icons.add_circle_outline,
              size: 30,
            ),
            Icon(
              Icons.home,
              size: 30,
            ),
          ],
        ),
        backgroundColor: keybodycolor,
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (BuildContext context, state) {
            if (state is AlqablahState) {
              return screen[0];
            } else if (state is TasbihState) {
              return screen[1];
            } else {
              return screen[2];
            }
          },
        ));
  }
}
