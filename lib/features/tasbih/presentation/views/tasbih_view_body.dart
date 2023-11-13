 import 'package:alfirdaws/features/tasbih/presentation/views/widget/banner_Tasbih.dart';
import 'package:alfirdaws/features/tasbih/presentation/views/widget/tasbih_button_widget.dart';
import 'package:flutter/material.dart';

class TasbihBody extends StatefulWidget {
  const TasbihBody({super.key});
  @override
  State<TasbihBody> createState() => _TasbihBodyState();
}
class _TasbihBodyState extends State<TasbihBody> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
      child: Column(
        children: [
          Center(
              child: BannerTasbih(
            count: count,
            onRest: () {
              setState(() {
                count = 0;
              });
            },
          )),
          const SizedBox(
            height: 150,
          ),
          TasbihButton(
            onAdd: () {
              count++;
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
