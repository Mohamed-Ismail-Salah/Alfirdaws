
import 'package:flutter/material.dart';

import '../../../../../core/resources_app/color_manager.dart';

class BannerTasbih extends StatelessWidget{
    const BannerTasbih({super.key,required this.count,required this.onRest});
    final   int count ;
    final void Function()? onRest;
  @override
  Widget build(BuildContext context) {

    return  Center(
        child: Card(

          elevation: 20,
          color: ColorManager.lightBrown ,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(55),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "عدد التسبيحات",
                  style: TextStyle(fontSize: 40, color:ColorManager.primary,),
                ),
              ), const SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "$count ",
                  style: TextStyle(fontSize: 90, color: ColorManager.primary,),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:250,bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorManager.primary,
                      shape: BoxShape.circle
                  ),
                  child: IconButton(
                    icon:const Icon(Icons.repeat, ),color: Colors.white,
                    onPressed:  onRest,
                  ),
                ),
              ),
            ],
          ),

        )
    );
  }

}