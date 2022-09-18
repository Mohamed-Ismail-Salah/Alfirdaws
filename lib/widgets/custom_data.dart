import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_indicator/loading_indicator.dart';
import '../cubits/list_data/list_data_cubit.dart';
import '../cubits/list_data/list_data_state.dart';
import 'custom_buildSectionItem.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';


class Custom_data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListDataCubit, ListDataState>(builder: (context, state) {
      if (state is ListDataSuccessful) {
        List items = BlocProvider.of<ListDataCubit>(context).items;

        return  AnimationLimiter(
            child:ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index){
            return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 450),
            child:SlideAnimation(
            verticalOffset: 50.0,
            child: FadeInAnimation(
            child: buildSectionItem(
            id: index,
            ),
            ),
            ));},
          itemCount: items.length,
        ));
      } else {
        return Center(
            child: Container(
          height: 50,
          child: LoadingIndicator(
            indicatorType: Indicator.ballBeat,
            colors: const [Colors.brown],
            strokeWidth: 2,
          ),
        ));
      }
    });
  }
}
