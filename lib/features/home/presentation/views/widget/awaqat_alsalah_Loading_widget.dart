import 'package:alfirdaws/core/resources_app/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/resources_app/constants_manager.dart';
import '../../../../../core/resources_app/values_manager.dart';

class AwaqatAlsalahLoadingWidget extends StatelessWidget {
  const AwaqatAlsalahLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s166,
      child: ListView.builder(
        itemCount: AppConstants.salahCount,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => Center(
          child: Shimmer.fromColors(
            baseColor: ColorManager.wightColor, // Color of the shimmer effect
            highlightColor:
                ColorManager.primary, // Highlight color of the shimmer effect
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: Container(
                height: AppSize.s150,
                width: AppSize.s110,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 50,
                    color: Colors.grey.withOpacity(.1),
                    spreadRadius: 20,
                    offset: const Offset(10, 10),
                  ),
                ]),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 10,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
