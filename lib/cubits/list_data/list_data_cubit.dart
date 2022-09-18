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
    case'قران كريم': { location_datalist="assets/localdatabase/Quran.json";}
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

}

Future<void> readJson() async {
    emit(ListDataLoding());
    getlocation_datalist();
    final String response = await rootBundle.loadString( location_datalist!);
    final data = await json.decode(response);
   items = data["chapters"];
    print("object");
    emit(ListDataSuccessful());
   }



}
