import 'package:alfirdaws/features/alsalah/presentation/view/widgets/alsalah_list_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/resources_app/color_manager.dart';
import '../../../../cubits/list_data/list_data_cubit.dart';

class AlsalahListView extends StatelessWidget{
  const AlsalahListView({super.key});
  @override
  Widget build(BuildContext context) {
    String? title = BlocProvider.of<ListDataCubit>(context).pageTitle;
   return   Scaffold(
body: AlsalahListViewBody(),
       backgroundColor:  ColorManager.secondColor,
       appBar: AppBar(
         title: Text(title!),
       ),
        );

  }

}