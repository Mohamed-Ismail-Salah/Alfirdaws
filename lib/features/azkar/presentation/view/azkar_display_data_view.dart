import 'package:alfirdaws/features/azkar/presentation/view/widgets/azkar_display_data_view_body.dart';
import 'package:flutter/material.dart';
class AzkarDisplayDataView extends StatelessWidget{
  const AzkarDisplayDataView({super.key});
  @override
  Widget build(BuildContext context) {
     return  const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
             child:  AzkarDisplayDataViewBody()),
      ),
    );
  }
}
