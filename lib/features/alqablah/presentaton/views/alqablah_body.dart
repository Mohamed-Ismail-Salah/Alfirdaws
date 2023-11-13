import 'dart:async';
import 'package:alfirdaws/features/alqablah/presentaton/views/widget/qiblah_compass_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:geolocator/geolocator.dart';
import '../../../../core/utils/functions/check_location_status.dart';
import 'widget/location_error_widget.dart';

class Alqablah extends StatefulWidget {
  const Alqablah({super.key});

  @override
  QiblaCompassState createState() => QiblaCompassState();
}

class QiblaCompassState extends State<Alqablah> {
  final locationStreamController = StreamController<LocationStatus>.broadcast();

  get stream => locationStreamController.stream;

  @override
  void initState() {
    checkLocationStatus(locationStreamController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      child: StreamBuilder(
        stream: stream,
        builder: (context, AsyncSnapshot<LocationStatus> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          if (snapshot.data?.enabled == true) {
            switch (snapshot.data?.status) {
              case LocationPermission.always:
              case LocationPermission.whileInUse:
                return QiblahCompassWidget();
              case LocationPermission.denied:
                return const LocationErrorWidget(
                  error: "تم رفض إذن خدمة الموقع",
                  callback: checkLocationStatus,
                );
              case LocationPermission.deniedForever:
                return const LocationErrorWidget(
                  error: "رفض خدمة الموقع إلى الأبد!",
                  callback: checkLocationStatus,
                );

              default:
                return Container();
            }
          } else {
            return const LocationErrorWidget(
              error: "الرجاء تمكين خدمة الموقع",
              callback: checkLocationStatus,
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    locationStreamController.close();
    FlutterQiblah().dispose();
  }
}
