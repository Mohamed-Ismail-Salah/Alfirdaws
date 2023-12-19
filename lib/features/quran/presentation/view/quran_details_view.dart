 import 'package:alfirdaws/core/resources_app/color_manager.dart';
import 'package:flutter/material.dart';
import 'widget/quran_details_body.dart';

class QuranDetailsView extends StatelessWidget {
  const QuranDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.backgroundQuran,
        body: const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: QuranDetailsBody()),
      ),
    );
  }
}
