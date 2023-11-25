import 'package:flutter/material.dart';

class AyatOfSurah extends StatelessWidget {
  const AyatOfSurah({
    super.key,
    required this.items,
    required this.id,
  });

  final List? items;
  final int? id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: RichText(
        textAlign: TextAlign.justify,
        textDirection: TextDirection.rtl,
        text: TextSpan(
            text: items![id!]["content"],
            style: const TextStyle(
              fontFamily: 'Katibeh',
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.w300,
              height: 1.5,
              overflow: TextOverflow.ellipsis,
            )),
      ),
    );
  }
}

