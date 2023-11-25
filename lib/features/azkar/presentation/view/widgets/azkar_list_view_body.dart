import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:loading_indicator/loading_indicator.dart';
import '../../../../../core/resources_app/color_manager.dart';
import '../../../../../cubits/list_data/list_data_cubit.dart';
import '../../../../../cubits/list_data/list_data_state.dart';
import 'azkar_section_item.dart';

class AzkarListViewBody extends StatelessWidget{
  const AzkarListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListDataCubit, ListDataState>(builder: (context, state) {
      if (state is ListDataSuccessful) {
        List items = BlocProvider.of<ListDataCubit>(context).items;
        return  AnimationLimiter(
            child:ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index){
                return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 450),
                    child:SlideAnimation(
                      verticalOffset: 50.0,
                      child: FadeInAnimation(
                        child:  AzkarSectionItem(
                          id: index,
                        ),
                      ),
                    ));},
              itemCount: items.length,
            ));
      } else {
        return Center(
            child: SizedBox(
              height: 50,
              child:   LoadingIndicator(
                indicatorType: Indicator.ballBeat,
                colors: [ColorManager.primary],
                strokeWidth: 2,
              ),
            ));
      }
    });
  }
}
