import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cubits/list_data/list_data_cubit.dart';

class AlsalahDisplayDataViewBody extends StatelessWidget{
  const AlsalahDisplayDataViewBody({super.key});

  @override
    Widget build(BuildContext context) {
      List items = BlocProvider.of<ListDataCubit>(context).items;
      int? id = BlocProvider.of<ListDataCubit>(context).id;
      return Column(children: [
        Padding(
          padding: const EdgeInsets.only(right: 15, left: 10,top: 15),
          child: RichText(
            textAlign: TextAlign.justify,
            textDirection: TextDirection.rtl,
            text: TextSpan(
                text: items[id]["content"],
                style: const TextStyle(
                  fontFamily: 'Tajawal',
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                  overflow: TextOverflow.ellipsis,
                )),
          ),
        )
      ]);
    }
  }
