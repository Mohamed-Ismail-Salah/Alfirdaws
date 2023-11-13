 import 'package:alfirdaws/core/resources_app/color_manager.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_quran_detils.dart';

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.backgroundQuran,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical, child: CustomQuran()),
      ),
    );
  }
}
