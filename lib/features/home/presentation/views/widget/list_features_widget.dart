import 'package:flutter/material.dart';
import 'custom_card.dart';

class ListFeatures extends StatelessWidget {
  const ListFeatures({
    Key? key, // Add the 'key' parameter with the correct syntax
    required this.pageTitleList,
    required this.img,
  }) : super(key: key); // Call the super constructor correctly

  final List pageTitleList;
  final List<String> img;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(), // Set physics to prevent scrolling
      shrinkWrap: true, // Set shrinkWrap to true
      itemCount: pageTitleList.length,
      itemBuilder: (BuildContext context, int index) => CustomCard(
        pageTitle: pageTitleList[index],
        imageLocation: img[index],
      ),
    );
  }
}
