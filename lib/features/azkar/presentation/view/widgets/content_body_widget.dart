import 'package:flutter/material.dart';
import 'content_text_widget.dart';
import 'count_body_widget.dart';

class ContentBody extends StatelessWidget {
  const ContentBody({
    super.key,
    required this.count,
    required this.content,
  });

  final String count;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            CountBody(count: count),
            const SizedBox(
              height: 20,
            ),
            ContentText(content: content),
          ],
        ),
      ),
    );
  }
}
