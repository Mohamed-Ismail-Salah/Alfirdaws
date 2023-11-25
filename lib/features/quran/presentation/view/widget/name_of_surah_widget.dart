import 'package:flutter/material.dart';

class NameOfSurah extends StatelessWidget {
  const NameOfSurah({
    super.key,
    required this.items,
    required this.id,
  });

  final List? items;
  final int? id;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/islamic_text_box.png"),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.only(top: 11),
              child: Text(
                "سورة ${items![id!]["name"]}",
                style: const TextStyle(fontSize: 25, color: Colors.black),
              ),
            )),
      ],
    );
  }
}
