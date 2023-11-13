import 'dart:convert';
import 'package:alfirdaws/core/resources_app/constants_manager.dart';
import 'package:alfirdaws/core/utils/functions/save_boxdata.dart';
import 'package:http/http.dart' as http;

import '../models/awaqat_alsalah_model.dart';

abstract class AwaqatAlsalahRemoteDataSource {
  Future<AwaqatAlsalahModel> getAwaqatAlsalah();
}
class AlsalahRemoteDataSourceImpl extends  AwaqatAlsalahRemoteDataSource{
  @override
  Future<AwaqatAlsalahModel> getAwaqatAlsalah()async {
    AwaqatAlsalahModel? awaqatAlsalahData;
    Uri url = Uri.parse("https://api.aladhan.com/v1/timingsByCity?city=Cairo&country=Egypt%20%20&method=5");
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    awaqatAlsalahData = AwaqatAlsalahModel.fromJson(data);

    saveBoxData(awaqatAlsalahData,AppConstants.kAwaqatAlsalahBox);

    return awaqatAlsalahData;

  }
}
