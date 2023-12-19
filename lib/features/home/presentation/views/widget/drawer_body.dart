import 'package:alfirdaws/core/resources_app/color_manager.dart';
import 'package:alfirdaws/core/resources_app/values_manager.dart';
import 'package:flutter/material.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorManager.secondColor,
      child: ListView(
        children: [
          ListTile(
            tileColor: ColorManager.drawerColor,
            minVerticalPadding: 25,
            leading: Icon(
              Icons.add_alert,
              color: ColorManager.primary,
              size: AppSize.s40,
            ),
            title: Text(
              ' انشاء تنبيهات ',
              style:
                  TextStyle(color: ColorManager.primary, fontSize: AppSize.s30),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
