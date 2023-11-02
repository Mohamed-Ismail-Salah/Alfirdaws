import 'dart:convert';
import 'package:http/http.dart' as http;

import '../features/home/data/models/awaqat_alsalah_model.dart';

class AwaqatAlsalah {
  Future<AwaqatAlsalahModel?> getAwaqatAlsalah() async {
    AwaqatAlsalahModel? AwaqatAlsalahData;

    Uri url = Uri.parse(
        "https://api.aladhan.com/v1/timingsByCity?city=Cairo&country=Egypt%20%20&method=5");
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);

    AwaqatAlsalahData = AwaqatAlsalahModel.fromJson(data);

    return AwaqatAlsalahData;
  }
}