import 'package:alfirdaws/core/resources_app/color_manager.dart';
import 'package:alfirdaws/core/resources_app/values_manager.dart';
import 'package:flutter/material.dart';
import '../../../../../core/resources_app/styles_manager.dart';

class AwaqatAlsalahFailureWidget extends StatelessWidget {
  const AwaqatAlsalahFailureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.signal_wifi_off,
          size: AppSize.s60,
          color: ColorManager.grayColor,
        ),
        Text(
          "لا يوجد اتصال بالإنترنت",
          style: getMediumStyle(
              color: ColorManager.grayColor, fontSize: AppSize.s18),
        ),
        Text(
          "  يرجى التحقق من اتصالك بالإنترنت والمحاولة مرة أخرى لعرض اقوقات الصلاه",
          style: getMediumStyle(
              color: ColorManager.grayColor, fontSize: AppSize.s18),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
