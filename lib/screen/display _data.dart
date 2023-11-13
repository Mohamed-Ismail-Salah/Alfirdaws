import 'package:alfirdaws/core/resources_app/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/list_data/list_data_cubit.dart';
import '../widgets/custom_text.dart';

class DisplayData extends StatelessWidget {
  const DisplayData({super.key});

  @override
  Widget build(BuildContext context) {
    List items = BlocProvider.of<ListDataCubit>(context).items;
    int? id = BlocProvider.of<ListDataCubit>(context).id;
    return Scaffold(
      backgroundColor:ColorManager.primary,
      appBar: AppBar(
        title: Text(items[id]["name"]),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical, child: Custom_Text()),
    );
  }
}
