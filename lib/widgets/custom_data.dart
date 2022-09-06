import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/list_data/list_data_cubit.dart';
import 'custom_buildSectionItem.dart';
class Custom_data  extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    List items=BlocProvider.of<ListDataCubit>(context).items;

     return  ListView.builder(
       physics: BouncingScrollPhysics(),
       itemBuilder: (BuildContext context, int index)=>buildSectionItem(id: index,),
       itemCount: items.length,

     );

  }
}