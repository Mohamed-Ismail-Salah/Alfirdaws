import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import '../core/resources_app/color_manager.dart';
import '../cubits/list_data/list_data_cubit.dart';
import '../widgets/custom_data.dart';

class ListOfData extends StatelessWidget {
  const ListOfData({super.key});
  @override
  Widget build(BuildContext context) {
    String? title = BlocProvider.of<ListDataCubit>(context).pageTitle;
    return Scaffold(
        backgroundColor:  ColorManager.secondColor,
        appBar: AppBar(
          title: Text(title!),
        ),
        body: Custom_data());
  }
}
