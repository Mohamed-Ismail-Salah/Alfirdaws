import 'dart:convert';

import '../models/AwaqatAlsalah_model.dart';
import 'package:http/http.dart' as http;

class AwaqatAlsalah {
  Future<AwaqatAlsalahModle?> getAwaqatAlsalah() async {
    AwaqatAlsalahModle? AwaqatAlsalahData;

    Uri url = Uri.parse(
        "https://api.aladhan.com/v1/timingsByCity?city=Cairo&country=Egypt%20%20&method=5");
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    AwaqatAlsalahData = AwaqatAlsalahModle.fromJson(data);

    return AwaqatAlsalahData;
  }
}
