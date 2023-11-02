import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/awaqat_alsalah_model.dart';
import '../../manger/awaqat_alsalah_cubit/awaqat_alsalah_state.dart';
import '../../manger/awaqat_alsalah_cubit/logc_awaqat_alsalah_cubit.dart';
import 'awaqat_alsalah_Loading_widget.dart';
import 'awaqat_alsalah_Succes_widget.dart';
import 'awaqat_alsalah_failure_widget.dart';

class TimeSalahWidget extends StatelessWidget {
  const TimeSalahWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AwaqatAlsalahCubit, AwaqatAlsalahState>(
        builder: (context, state) {
          if (state is AwaqatAlsalahLoading) {
            return const AwaqatAlsalahLoadingWidget();
          } else if (state is AwaqatAlsalahSucces) {
            AwaqatAlsalahModel? futureAwaqatAlsalah =
                BlocProvider.of<AwaqatAlsalahCubit>(context)
                    .awaqatAlsalahModel;

            return  AwaqatAlsalahSuccessWidget(futureAwaqatAlsalah: futureAwaqatAlsalah);
          } else if (state is AwaqatAlsalahFailure) {
            return const AwaqatAlsalahFailureWidget();
          } else {
            return  Container();
          }
        });
  }
}

