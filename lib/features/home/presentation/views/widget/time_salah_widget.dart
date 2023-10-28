
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cubits/awaqat_alsalah_cubit/awaqat_alsalah_state.dart';
import '../../../../../cubits/awaqat_alsalah_cubit/logc_awaqat_alsalah_cubit.dart';
import '../../../../../models/AwaqatAlsalah_model.dart';
import 'awaqat_alsalah_Loading_widget.dart';
import 'awaqat_alsalah_Succes_widget.dart';
import 'awaqat_alsalah_failure_widget.dart';
import 'custom_card.dart';

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
            AwaqatAlsalahModle? futureAwaqatAlsalah =
                BlocProvider.of<AwaqatAlsalahCubit>(context)
                    .awaqatAlsalahModle;

            return  AwaqatAlsalahSuccessWidget(futureAwaqatAlsalah: futureAwaqatAlsalah);
          } else if (state is AwaqatAlsalahFailure) {
            return const AwaqatAlsalahFailureWidget();
          } else {
            return Row(
              children: [
                CustomCard(
                  pageTitle: 'الفجر\n ⏳',
                  imageLocation: 'assets/images/fajr.jpg',
                  height: 150,
                  width: 110,
                  fSize: 25,
                  nav: false,
                ),
                CustomCard(
                  pageTitle: ' الظهر\n  ⏳',
                  imageLocation: 'assets/images/zahar.jpg',
                  height: 150,
                  width: 110,
                  fSize: 25,
                  nav: false,
                ),
                CustomCard(
                  pageTitle: 'العصر\n  ⏳',
                  imageLocation: 'assets/images/asr.jpg',
                  height: 150,
                  width: 110,
                  fSize: 25,
                  nav: false,
                ),
                CustomCard(
                  pageTitle: 'المغرب\n  ⏳',
                  imageLocation: 'assets/images/maghrib.jpg',
                  height: 150,
                  width: 110,
                  fSize: 25,
                  nav: false,
                ),
                CustomCard(
                  pageTitle: 'العشاء\n  ⏳',
                  imageLocation: 'assets/images/easha.jpg',
                  height: 150,
                  width: 110,
                  fSize: 25,
                  nav: false,
                ),
              ],
            );
          }
        });
  }
}

