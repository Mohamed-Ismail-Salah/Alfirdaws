import 'package:alfirdaws/core/resources_app/color_manager.dart';
import 'package:alfirdaws/core/resources_app/font_manager.dart';
import 'package:alfirdaws/core/resources_app/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
 import '../../../../../core/resources_app/assets_manager.dart';
import '../../../../../core/resources_app/constants_manager.dart';
import '../../../../../core/resources_app/styles_manager.dart';
import 'drawer_button_widget.dart';

class TimeDateWidget extends StatelessWidget {
  const TimeDateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: AppSize.s200,
              width: double.infinity,
              decoration:   BoxDecoration(
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(40)),
                image: DecorationImage(
                  image: const AssetImage(ImageAssets.bacTimeImg),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8),
                    BlendMode.dstATop,
                  ),
                ),
              ),
              child: Center(
                child: StreamBuilder(
                  stream: Stream.periodic(const Duration(seconds: AppConstants.timeDuration)),
                  builder: (context, snapshot) {
                    return Text(
                      "       ${DateFormat('hh:mm a').format(DateTime.now())}\n ${DateFormat.yMMMMd('en_US').format(DateTime.now())}\n",
                      style: getBoldStyle(
                        color: ColorManager.secondColor,
                        fontSize: FontSize.s30,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        const DrawerButtonWidget(),
      ],
    );
  }
}

