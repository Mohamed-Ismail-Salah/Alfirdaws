import 'package:alfirdaws/features/Splash/presentation/views/widgets/splashView_body.dart';
import 'package:flutter/material.dart';
 import '../../../../core/resources_app/color_manager.dart';
class SplashView extends StatelessWidget{
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return    SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.primary,
        body:const SplashViewBody(),
      ),
    );
  }

}