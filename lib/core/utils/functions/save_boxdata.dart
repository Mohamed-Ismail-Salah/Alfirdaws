
import 'package:hive/hive.dart';

import '../../../features/home/data/models/awaqat_alsalah_model.dart';

void saveBoxData(AwaqatAlsalahModel awaqatAlsalahModel, String boxName) {
  var box = Hive.box<AwaqatAlsalahModel>(boxName);
  box.put(0,awaqatAlsalahModel);
}