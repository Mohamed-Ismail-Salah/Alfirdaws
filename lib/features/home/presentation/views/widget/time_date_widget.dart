import 'package:alfirdaws/core/resources_app/color_manager.dart';
import 'package:alfirdaws/core/resources_app/font_manager.dart';
import 'package:alfirdaws/core/resources_app/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../../core/resources_app/assets_manager.dart';
import '../../../../../core/resources_app/constants_manager.dart';
import '../../../../../core/resources_app/styles_manager.dart';

class TimeDateWidget extends StatelessWidget {
  const TimeDateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: AppSize.s200,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(40)),
                image: DecorationImage(
                    image: AssetImage(ImageAssets.bacTimeImg),
                    fit: BoxFit.cover,
                    opacity: .8)),
            child: Center(
                child: StreamBuilder(
                    stream: Stream.periodic(const Duration(seconds:AppConstants.timeDuration)),
                    builder: (context, snapshot) {
                      return Text(
                        "       ${DateFormat('hh:mm a').format(DateTime.now())}\n\n ${DateFormat.yMMMMd('en_US').format(DateTime.now())}\n",
                        style: getBoldStyle(
                            color: ColorManager.secondColor,
                            fontSize: FontSize.s30),
                      );
                    }))),
      ],
    );
  }
}
