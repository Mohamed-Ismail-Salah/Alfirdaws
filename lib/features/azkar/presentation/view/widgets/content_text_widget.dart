import 'package:flutter/material.dart';

class ContentText extends StatelessWidget {
  const ContentText({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: RichText(
        textAlign: TextAlign.justify,
        textDirection: TextDirection.rtl,
        text: TextSpan(
          text: content ,
          style: const TextStyle(
            fontFamily: 'Tajawal',
            color: Colors.black,
            fontSize: 25,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}
