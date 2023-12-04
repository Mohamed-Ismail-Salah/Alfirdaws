import 'package:flutter/material.dart';
import '../../../../../core/resources_app/color_manager.dart';

class CountBody extends StatelessWidget {
  const CountBody({
    super.key,
    required this.count,
  });

  final String count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        decoration: BoxDecoration(
          color: ColorManager.lightBrown,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3), // التحكم في موضع الظل
            ),
          ],
        ),
        child: Text(
          "عدد مرات القراءة: ${count  == "" ? "1" : count  }",
          style: TextStyle(
            fontSize: 25.0,

            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
