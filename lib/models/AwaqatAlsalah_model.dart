class AwaqatAlsalahModle {
    String Fajr;
   String Dhuhr;
  String Asr;
  String Maghrib;
   String Isha;
  AwaqatAlsalahModle(
      {required this.Fajr,
      required this.Dhuhr,
      required this.Asr,
      required this.Maghrib,
      required this.Isha});

  factory AwaqatAlsalahModle.fromJson(Map<String, dynamic> data){

    return AwaqatAlsalahModle(
        Maghrib:data["data"]["timings"]["Fajr"],
        Dhuhr:data["data"]["timings"]["Dhuhr"],
        Asr: data["data"]["timings"] ["Asr"],
        Fajr: data["data"]["timings"]["Maghrib"],
        Isha: data["data"]["timings"]["Isha"]

    );


  }
@override
  String toString() {

    return super.toString();
  }
}
