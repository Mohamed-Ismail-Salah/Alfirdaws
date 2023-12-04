import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cubits/list_data/list_data_cubit.dart';
import 'content_body_widget.dart';

class AzkarDisplayDataViewBody extends StatelessWidget {
  const AzkarDisplayDataViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List items = BlocProvider.of<ListDataCubit>(context).items;
    int? id = BlocProvider.of<ListDataCubit>(context).id;
    List content = items[id]["content"];
    List count = items[id]["count"];
    return ListView.builder(
      itemCount: content.length,
      itemBuilder: (context, index) =>
          ContentBody(count: count[index], content: content[index]),
    );
  }
}
