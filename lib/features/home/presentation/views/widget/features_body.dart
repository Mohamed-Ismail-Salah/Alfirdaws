import 'package:alfirdaws/features/home/presentation/views/widget/time_date_widget.dart';
import 'package:alfirdaws/features/home/presentation/views/widget/time_salah_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/resources_app/assets_manager.dart';
import '../../../../../cubits/awaqat_alsalah_cubit/logc_awaqat_alsalah_cubit.dart';
import 'list_features_widget.dart';

class FeaturesBody extends StatelessWidget {
    const FeaturesBody({super.key});
  @override
  Widget build(BuildContext context) {
    List pageTitleList = [
      'قران كريم',
      'الصلا ه',
      'الوضوء',
      'لاذكار',
      'اسماء الله الحسنى',
    ];
    List<String> img = [
      ImageAssets.bacQuran,
      ImageAssets.bacSalah,
      ImageAssets.bacWadaw,
      ImageAssets.bacAzkar,
      ImageAssets.bacNamesOfAllah,
    ];
    BlocProvider.of<AwaqatAlsalahCubit>(context).getAwaqatAlsalah();
    return   SingleChildScrollView(
      child:  Column(
        children: [
          const TimeDateWidget(),
          const TimeSalahWidget(),
           ListFeatures(pageTitleList: pageTitleList, img: img,),

        ],
      ),
    );
  }

}



