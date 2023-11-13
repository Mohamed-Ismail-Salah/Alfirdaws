import 'package:hive/hive.dart';

import '../../../../core/resources_app/constants_manager.dart';
import '../models/awaqat_alsalah_model.dart';
abstract class AwaqatAlsalahLocalDataSource {
  AwaqatAlsalahModel getAwaqatAlsalah();
}

class AwaqatAlsalahLocalDataSourceImpl extends  AwaqatAlsalahLocalDataSource {

  @override
  AwaqatAlsalahModel getAwaqatAlsalah() {
    var box = Hive.box<AwaqatAlsalahModel>(AppConstants.kAwaqatAlsalahBox);
    return  box.values.toList()[0];
  }
}