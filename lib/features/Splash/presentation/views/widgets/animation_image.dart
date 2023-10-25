import 'package:alfirdaws/core/resources_app/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/resources_app/assets_manager.dart';

class AnimationImage extends StatelessWidget {
  const AnimationImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height:AppSize.s250,
        width: AppSize.s250,
        child: Lottie.asset(AnimationImagesAssets.animationSplashImg));
  }
}