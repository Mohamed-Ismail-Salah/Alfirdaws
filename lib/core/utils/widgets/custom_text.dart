import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/list_data/list_data_cubit.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});
  @override
  Widget build(BuildContext context) {
    List items = BlocProvider.of<ListDataCubit>(context).items;
    int? id = BlocProvider.of<ListDataCubit>(context).id;
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(right: 15, left: 10,top: 15),
        child: RichText(
          textDirection: TextDirection.rtl,
          text: TextSpan(
              text: items[id]["content"],
              style: const TextStyle(
                fontFamily: 'Tajawal',
                color: Colors.black,
                fontSize: 25,
              )),
        ),
      )
    ]);
  }
}
