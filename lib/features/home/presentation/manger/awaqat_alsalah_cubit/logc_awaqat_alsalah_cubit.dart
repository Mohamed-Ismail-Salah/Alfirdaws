

  import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../services/awaqat_alsalah_services.dart';
import '../../../data/models/awaqat_alsalah_model.dart';
import 'awaqat_alsalah_state.dart';



class AwaqatAlsalahCubit extends Cubit<AwaqatAlsalahState> {
  AwaqatAlsalahCubit(this.awaqatAlsalah) : super(AwaqatAlsalahin());
  AwaqatAlsalah awaqatAlsalah;
  AwaqatAlsalahModel? awaqatAlsalahModel;

  void getAwaqatAlsalah() async {
    emit(AwaqatAlsalahLoading());
    try {
      awaqatAlsalahModel = await awaqatAlsalah.getAwaqatAlsalah();
      emit(AwaqatAlsalahSucces());
    } catch (e) {
      emit(AwaqatAlsalahFailure());
    }
  }
}
