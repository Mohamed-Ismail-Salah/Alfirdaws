import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'list_data_state.dart';


class ListDataCubit extends Cubit<ListDataState> {
  ListDataCubit() : super(ListDataInitial());

  String? pageTitle;
  int id=0;
  List items = [];

  void gitid(int iditem){
    id =iditem ;
  }

  void gitpageTitle(String Title){
    pageTitle =Title;
  }

String getlocation_datalist(){
  String?  location_datalist ;
  switch ( pageTitle ) {
    case 'قران كريم':  { location_datalist="assets/localdatabase/Quran.json";}
    break;
    case 'لاذكار' : location_datalist="assets/localdatabase/sections_db.json";
    break;
    case 'الصلا ه' : location_datalist="assets/localdatabase/alsalah.json";
    break;
    case  'الوضوء' : location_datalist="assets/localdatabase/alwudu.json";
    break;
    case  'اسماء الله الحسنى' : location_datalist="assets/localdatabase/Names_Of_Allah.json";
    break;
  }
return location_datalist!;
}

Future<void> readJson() async {
    final String response = await rootBundle.loadString(getlocation_datalist());
    final data = await json.decode(response);
   items = data["chapters"];
  }



}
