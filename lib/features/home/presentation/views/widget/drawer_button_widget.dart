import 'package:alfirdaws/core/resources_app/color_manager.dart';
import 'package:flutter/material.dart';

import '../../../../../core/resources_app/values_manager.dart';

class DrawerButtonWidget extends StatelessWidget {
  const DrawerButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned( // Positioned widget outside of the Column
      top: AppSize.s12,
      left: AppSize.s12,
      child: IconButton(
        color: ColorManager.secondColor,

        icon: const Icon(Icons.menu,size: AppSize.s30,),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    );
  }
}