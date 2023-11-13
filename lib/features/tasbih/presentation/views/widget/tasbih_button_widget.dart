import 'package:flutter/material.dart';

import '../../../../../core/resources_app/color_manager.dart';

class TasbihButton extends StatelessWidget{
    const TasbihButton({super.key,required this.onAdd});
    final  void Function()? onAdd;
  @override
  Widget build(BuildContext context) {
    return   ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primary,
        fixedSize: const Size(170, 50),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed:onAdd,
      child: const Text(
        'سبح',
        style: TextStyle(fontSize: 30.0),
      )
    );
  }

}