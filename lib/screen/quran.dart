import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/list_data/list_data_cubit.dart';
import '../widgets/custom_quran_detils.dart';

class Quran extends StatelessWidget {
  Widget build(BuildContext context) {
    List items = BlocProvider.of<ListDataCubit>(context).items;
    int? id = BlocProvider.of<ListDataCubit>(context).id;
    return Scaffold(
      backgroundColor: Colors.brown.shade200,

      body: SingleChildScrollView(
          scrollDirection: Axis.vertical, child: Custom_Quran()),
    );
  }
}
