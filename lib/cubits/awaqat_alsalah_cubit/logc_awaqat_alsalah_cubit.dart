import 'dart:async';

import 'package:alfirdaws/cubits/awaqat_alsalah_cubit/awaqat_alsalah_state.dart';
import 'package:alfirdaws/models/AwaqatAlsalah_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../services/awaqat_alsalah_services.dart';

class AwaqatAlsalahCubit extends Cubit<AwaqatAlsalahState>{
  AwaqatAlsalahCubit( this.awaqatAlsalah) : super(AwaqatAlsalahin())  ;
  AwaqatAlsalah awaqatAlsalah;
  AwaqatAlsalahModle? awaqatAlsalahModle;



  void getAwaqatAlsalah()async{
    emit(AwaqatAlsalahLoading());
    try{
      awaqatAlsalahModle= await awaqatAlsalah.getAwaqatAlsalah();
      emit(AwaqatAlsalahSucces());
    }catch(e){
      emit(AwaqatAlsalahFailure());
    }


}
}