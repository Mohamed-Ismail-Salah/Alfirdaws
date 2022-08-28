import 'package:alfirdaws/cubits/home_cubit/home_cubit.dart';
import 'package:alfirdaws/screen/display%20_data.dart';
import 'package:alfirdaws/screen/home.dart';
import 'package:alfirdaws/screen/list_of_data.dart';
import 'package:alfirdaws/screen/quran.dart';
import 'package:alfirdaws/services/awaqat_alsalah_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'constants/constants.dart';
import 'cubits/awaqat_alsalah_cubit/logc_awaqat_alsalah_cubit.dart';
import 'cubits/list_data/list_data_cubit.dart';

void main() {
  runApp(
    MultiBlocProvider(
providers: [
  BlocProvider(create: (context)=> AwaqatAlsalahCubit(AwaqatAlsalah())),
  BlocProvider(create: (context)=> HomeCubit()),
  BlocProvider(create: (context)=> ListDataCubit()),
],
child: MyApp(),
    )
   );
}
 class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

return MaterialApp(
 routes: {
   "home": (context) =>home() ,
   "list_of_data":(context) => List_of_data() ,
   "Display_data":(context) => Display_data(),
   "Quran":(context) =>  Quran(),
 },
   initialRoute:'home' ,


  theme: ThemeData(
    appBarTheme:AppBarTheme(
      color: keyAppbarcolor,
      titleTextStyle: TextStyle(fontSize: 30,),
        centerTitle: true,

    ),
     fontFamily:'Tajawal'


  ),
);

  }

 }