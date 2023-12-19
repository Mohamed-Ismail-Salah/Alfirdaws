import 'package:alfirdaws/features/home/presentation/views/widget/bottom_bar_widget.dart';
import 'package:alfirdaws/features/home/presentation/views/widget/drawer_body.dart';
import 'package:alfirdaws/features/home/presentation/views/widget/home_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return    const SafeArea(
      child: Scaffold(
          drawer: DrawerBody(),
          bottomNavigationBar: BottomBarWidget(),
        body: HomeBody()
        ),
    );
  }
}
