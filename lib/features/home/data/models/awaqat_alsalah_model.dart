import 'package:hive/hive.dart';
part 'awaqat_alsalah_model.g.dart';
@HiveType(typeId: 0)
class AwaqatAlsalahModel {
  @HiveField(0)
  String fajr;
  @HiveField(1)
  String dhuhr;
  @HiveField(2)
  String asr;
  @HiveField(3)
  String maghrib;
  @HiveField(4)
  String isha;

  AwaqatAlsalahModel({
    required this.fajr,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
  });

  factory AwaqatAlsalahModel.fromJson(Map<String, dynamic> data) {
    return AwaqatAlsalahModel(
      fajr: data["data"]["timings"]["Fajr"],
      dhuhr: data["data"]["timings"]["Dhuhr"],
      asr: data["data"]["timings"]["Asr"],
      maghrib: data["data"]["timings"]["Maghrib"],
      isha: data["data"]["timings"]["Isha"],
    );
  }

}


 