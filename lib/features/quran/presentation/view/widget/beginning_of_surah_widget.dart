import 'package:flutter/material.dart';

class BeginningOfSurah extends StatelessWidget {
  const BeginningOfSurah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 5, top: 10),
      child: Text(
        "   بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ    ",
        style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w800,
            fontFamily: 'Katibeh',
            height: 2),
      ),
    );
  }
}
