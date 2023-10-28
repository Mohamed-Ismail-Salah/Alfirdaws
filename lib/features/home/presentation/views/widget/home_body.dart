import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../cubits/home_cubit/home_cubit.dart';
import '../../../../../cubits/home_cubit/home_state.dart';
import '../../../../../screen/alqablah.dart';
import 'features_body.dart';
import '../../../../tasbih/presentation/tasbih.dart';
class HomeBody extends StatelessWidget{

  List<Widget> screen = [
    Alqablah(),
    Tasbih(),
    FeaturesBody(),
  ];
    HomeBody({super.key});
  @override
  Widget build(BuildContext context) {

   return BlocBuilder<HomeCubit, HomeState>(
     builder: (BuildContext context, state) {
       if (state is AlqablahState) {
         return screen[0];
       } else if (state is TasbihState) {
         return screen[1];
       } else {
         return screen[2];
       }
     },
   );
  }

}