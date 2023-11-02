import 'package:alfirdaws/core/resources_app/values_manager.dart';
import 'package:flutter/material.dart';
import '../../../../../core/resources_app/assets_manager.dart';
import '../../../../../core/utils/functions/format_time12Hour.dart';
 import '../../../data/models/awaqat_alsalah_model.dart';
import 'custom_card.dart';

class AwaqatAlsalahSuccessWidget extends StatelessWidget {
  const AwaqatAlsalahSuccessWidget({
    super.key,
    required this.futureAwaqatAlsalah,
  });

  final AwaqatAlsalahModel? futureAwaqatAlsalah;

  @override
  Widget build(BuildContext context) {

    List pageTitleList = [
      '  الفجر\n${formatTime12Hour(futureAwaqatAlsalah!.fajr)}',
      '  الظهر\n ${formatTime12Hour(futureAwaqatAlsalah!.dhuhr)}',
      ' العصر\n${formatTime12Hour(futureAwaqatAlsalah!.asr)}',
      ' المغرب\n ${formatTime12Hour(futureAwaqatAlsalah!.maghrib)}',
      ' العشاء\n ${formatTime12Hour(futureAwaqatAlsalah!.isha)}',
    ];
    List imageLocationList = [
      ImageAssets.bacFajr,
      ImageAssets.bacZahar,
      ImageAssets.bacAsr,
      ImageAssets.bacMaghrib,
      ImageAssets.bacEasha,
    ];
    return SizedBox(
      height: AppSize.s166,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageLocationList.length,
        itemBuilder: (BuildContext context, int index) => CustomCard(
          pageTitle: pageTitleList[index],
          imageLocation: imageLocationList[index],
          height: AppSize.s150,
          width: AppSize.s110,
          fSize: 25,
          nav: false,
        ),
      ),
    );
  }





}
