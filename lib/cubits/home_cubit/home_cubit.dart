import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_state.dart';
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

   int currentIndex=2;

void getbody(int index){
  currentIndex =index;
  if(currentIndex == 0){
    emit( AlqablahState());

  }else if(currentIndex == 1){
    emit( TasbihState());
  }else{
    emit( HomeInitial());
  }
}

}
