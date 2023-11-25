import 'package:alfirdaws/features/alsalah/presentation/view/widgets/alsalah_display_data_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/resources_app/color_manager.dart';
import '../../../../cubits/list_data/list_data_cubit.dart';

class AlsalahDisplayDataView extends StatelessWidget{
  const AlsalahDisplayDataView({super.key});

  @override
  Widget build(BuildContext context) {
    List items = BlocProvider.of<ListDataCubit>(context).items;
    int? id = BlocProvider.of<ListDataCubit>(context).id;
    return Scaffold(
      backgroundColor:ColorManager.secondColor,
      appBar: AppBar(
        title: Text(items[id]["name"]),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical, child: AlsalahDisplayDataViewBody()),
    );
  }
}
