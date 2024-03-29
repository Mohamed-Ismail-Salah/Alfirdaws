import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'list_data_state.dart';


class ListDataCubit extends Cubit<ListDataState> {
  ListDataCubit() : super(ListDataInitial());
  String?  location_datalist ;
  String? pageTitle;
  int id=0;
  List items=[] ;

  void gitid(int iditem){
    id =iditem ;
  }

  void gitpageTitle(String Title){
    pageTitle =Title;
  }

void getlocation_datalist(){

  switch ( pageTitle ) {
    case'قران كريم': { location_datalist="assets/json/Quran.json";}
    break;
    case 'الاذكار' : location_datalist="assets/json/azkar.json";
    break;
    case 'الصلاه' : location_datalist="assets/json/alsalah.json";
    break;
    case  'الوضوء' : location_datalist="assets/json/alwudu.json";
    break;
    case  'اسماء الله الحسنى' : location_datalist="assets/json/Names_Of_Allah.json";
    break;
  }

}

Future<void> readJson() async {
    emit(ListDataLoading());
    getlocation_datalist();
    final String response = await rootBundle.loadString( location_datalist!);
    final data = await json.decode(response);
   items = data["chapters"];
    emit(ListDataSuccessful());
   }



}
