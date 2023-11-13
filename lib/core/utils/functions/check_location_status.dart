import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:geolocator/geolocator.dart';

Future<void> checkLocationStatus(locationStreamController) async {
  final locationStatus = await FlutterQiblah.checkLocationStatus();
  if (locationStatus.enabled &&
      locationStatus.status == LocationPermission.denied) {
    await FlutterQiblah.requestPermissions();
    final s = await FlutterQiblah.checkLocationStatus();
    locationStreamController.sink.add(s);
  } else {
    locationStreamController.sink.add(locationStatus);
  }
}