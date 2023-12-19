import 'package:flutter_bloc/flutter_bloc.dart';
 import '../../../data/models/awaqat_alsalah_model.dart';
 import '../../../data/repos/home_repo_impl.dart';
import 'awaqat_alsalah_state.dart';



class AwaqatAlsalahCubit extends Cubit<AwaqatAlsalahState> {
  AwaqatAlsalahCubit(this.awaqatAlsalahRepoImpl) : super(AwaqatAlsalahin());
  AwaqatAlsalahRepoImpl  awaqatAlsalahRepoImpl  ;
  AwaqatAlsalahModel? awaqatAlsalahModel;

  void getAwaqatAlsalah() async {
    emit(AwaqatAlsalahLoading());
    try {
      awaqatAlsalahModel = await awaqatAlsalahRepoImpl.getAwaqatAlsalah();
      emit(AwaqatAlsalahSucces());
    } catch (e) {
      emit(AwaqatAlsalahFailure());
    }
  }
}
