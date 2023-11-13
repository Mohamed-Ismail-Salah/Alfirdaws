import 'package:alfirdaws/features/home/data/data_sources/home_local_data_source.dart';
import 'package:alfirdaws/features/home/data/models/awaqat_alsalah_model.dart';
import 'package:alfirdaws/screen/display%20_data.dart';
import 'package:alfirdaws/features/home/presentation/views/home_view.dart';
import 'package:alfirdaws/screen/list_of_data.dart';
import 'package:alfirdaws/screen/quran.dart';
import 'package:alfirdaws/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'core/resources_app/color_manager.dart';
import 'core/resources_app/constants_manager.dart';
import 'cubits/list_data/list_data_cubit.dart';
import 'features/Splash/presentation/views/splash_view.dart';
import 'features/home/data/repos/home_repo_impl.dart';
import 'features/home/presentation/manger/awaqat_alsalah_cubit/logc_awaqat_alsalah_cubit.dart';
import 'features/home/presentation/manger/home_cubit/home_cubit.dart';

void main()async {
  await Hive.initFlutter();
  Hive.registerAdapter(AwaqatAlsalahModelAdapter());
  await Hive.openBox<AwaqatAlsalahModel>(AppConstants.kAwaqatAlsalahBox);
  runApp(
    MultiBlocProvider(
providers: [
  BlocProvider(create: (context)=> AwaqatAlsalahCubit(AwaqatAlsalahRepoImpl(awaqatAlsalahLocalDataSource: AwaqatAlsalahLocalDataSourceImpl(), awaqatAlsalahRemoteDataSource:AlsalahRemoteDataSourceImpl()  ))),
  BlocProvider(create: (context)=> HomeCubit()),
  BlocProvider(create: (context)=> ListDataCubit()),
],
child: const MyApp(),
    )
   );
}
 class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

return MaterialApp(
  debugShowCheckedModeBanner: false,
 routes: {
   "home": (context) =>const HomeView() ,
   "SplashView":(context) =>const SplashView(),
   "list_of_data":(context) => const ListOfData() ,
   "Display_data":(context) => const DisplayData(),
   "Quran":(context) =>  Quran(),
 },
   initialRoute:"SplashView",


  theme: ThemeData(
      scaffoldBackgroundColor: ColorManager.secondColor,
    appBarTheme:AppBarTheme(
      color:   ColorManager.primary,
      titleTextStyle: const TextStyle(fontSize: 30,),
        centerTitle: true,

    ),
     fontFamily:'Tajawal'


  ),
);

  }

 }