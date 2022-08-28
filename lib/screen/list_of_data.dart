import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constants/constants.dart';
import '../cubits/list_data/list_data_cubit.dart';
import '../widgets/custom_data.dart';

class List_of_data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
String? title = BlocProvider.of<ListDataCubit>(context).pageTitle;
    return Scaffold(
        backgroundColor: keybodycolor,
        appBar: AppBar(
          title: Text( title!),
        ),
        body: Custom_data());
  }
}
