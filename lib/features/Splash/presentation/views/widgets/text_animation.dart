import 'package:alfirdaws/core/resources_app/color_manager.dart';
import 'package:alfirdaws/core/resources_app/font_manager.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../../../../../core/resources_app/constants_manager.dart';
import '../../../../../core/resources_app/strings_manager.dart';
import '../../../../../core/resources_app/styles_manager.dart';

class TextAnimation extends StatelessWidget {
  const TextAnimation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedTextKit(
        pause:const Duration(milliseconds: AppConstants.splashDurationTime),
          totalRepeatCount: 1,
          repeatForever: false,
          onFinished: () {
            Navigator.pushReplacementNamed(
              context,
              "home",
            ) ;
          },
          animatedTexts: [
            TypewriterAnimatedText(
              AppStrings.alFirdaws,
              textStyle:  getBoldStyle(color:  ColorManager.secondColor,fontSize:FontSize.s30 ),
              speed: const Duration(milliseconds:AppConstants.splashSpeed),
            ),
          ]),
    );
  }
}
