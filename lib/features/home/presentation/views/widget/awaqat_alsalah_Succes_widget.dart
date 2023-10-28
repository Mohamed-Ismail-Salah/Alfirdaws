import 'package:alfirdaws/core/resources_app/values_manager.dart';
import 'package:flutter/material.dart';

import '../../../../../core/resources_app/assets_manager.dart';
import '../../../../../models/AwaqatAlsalah_model.dart';
import 'custom_card.dart';

class AwaqatAlsalahSuccessWidget extends StatelessWidget {
  const AwaqatAlsalahSuccessWidget({
    super.key,
    required this.futureAwaqatAlsalah,
  });

  final AwaqatAlsalahModle? futureAwaqatAlsalah;

  @override
  Widget build(BuildContext context) {

    List pageTitleList = [
      'الفجر\n${futureAwaqatAlsalah?.Fajr}',
      ' الظهر\n ${futureAwaqatAlsalah?.Dhuhr}',
      'العصر\n${futureAwaqatAlsalah?.Asr}',
      'المغرب\n ${futureAwaqatAlsalah?.Maghrib}',
      'العشاء\n ${futureAwaqatAlsalah?.Isha}',
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
