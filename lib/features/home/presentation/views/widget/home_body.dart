import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../screen/alqablah.dart';
import '../../manger/home_cubit/home_cubit.dart';
import '../../manger/home_cubit/home_state.dart';
import 'features_body.dart';
import '../../../../tasbih/presentation/tasbih.dart';
class HomeBody extends StatelessWidget{
    const HomeBody({super.key});
  @override
  Widget build(BuildContext context) {
    List<Widget> screen = [
      Alqablah(),
      Tasbih(),
      const FeaturesBody(),
    ];
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