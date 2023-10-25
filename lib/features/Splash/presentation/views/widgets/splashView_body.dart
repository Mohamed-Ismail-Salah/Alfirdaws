import 'package:alfirdaws/features/Splash/presentation/views/widgets/text_animation.dart';
import 'package:flutter/material.dart';
import 'animation_image.dart';

class SplashViewBody extends StatelessWidget{
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
     return   const Column(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
          AnimationImage(),
         TextAnimation()
       ],

     );
  }

}



