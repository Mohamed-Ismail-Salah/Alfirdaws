
class AwaqatAlsalahModel {
  String fajr;
  String dhuhr;
  String asr;
  String maghrib;
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


 