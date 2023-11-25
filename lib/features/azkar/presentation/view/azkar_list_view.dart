import 'package:alfirdaws/features/azkar/presentation/view/widgets/azkar_list_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/resources_app/color_manager.dart';
import '../../../../cubits/list_data/list_data_cubit.dart';

class AzkarListView extends StatelessWidget {
  const AzkarListView({super.key});

  @override
  Widget build(BuildContext context) {
    String? title = BlocProvider.of<ListDataCubit>(context).pageTitle;
    return Scaffold(
      body:  AzkarListViewBody(),
      backgroundColor:  ColorManager.secondColor,
      appBar: AppBar(
        title: Text(title!),
      ),
    );
  }

}