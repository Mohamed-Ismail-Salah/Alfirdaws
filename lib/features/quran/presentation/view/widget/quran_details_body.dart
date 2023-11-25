import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../cubits/list_data/list_data_cubit.dart';
import 'ayat_of_surah_widget.dart';
import 'beginning_of_surah_widget.dart';
import 'name_of_surah_widget.dart';

class QuranDetailsBody extends StatelessWidget {
  const QuranDetailsBody({super.key});
  @override
  Widget build(BuildContext context) {
    int? id = BlocProvider.of<ListDataCubit>(context).id;
    List? items = BlocProvider.of<ListDataCubit>(context).items;
    return Column(children: [
      NameOfSurah(items: items, id: id),
      const BeginningOfSurah(),
      AyatOfSurah(items: items, id: id)
    ]);
  }
}
