import 'package:alfirdaws/core/resources_app/constants_manager.dart';
import 'package:alfirdaws/features/home/data/models/awaqat_alsalah_model.dart';
import 'package:alfirdaws/features/home/domain/repos/home_repo_impl.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hive/hive.dart';
import '../data_sources/home_local_data_source.dart';
import '../data_sources/home_remote_data_source.dart';

class AwaqatAlsalahRepoImpl extends AwaqatAlsalahRepo {
  final AwaqatAlsalahLocalDataSource awaqatAlsalahLocalDataSource;
  final AwaqatAlsalahRemoteDataSource awaqatAlsalahRemoteDataSource;

  AwaqatAlsalahRepoImpl(
      {required this.awaqatAlsalahLocalDataSource,
      required this.awaqatAlsalahRemoteDataSource});

  @override
  Future<AwaqatAlsalahModel> getAwaqatAlsalah() async {
    AwaqatAlsalahModel awaqatAlsalahModel;
    var connectivityResult = await Connectivity().checkConnectivity();

    if (connectivityResult == ConnectivityResult.wifi) {
      awaqatAlsalahModel =
          await awaqatAlsalahRemoteDataSource.getAwaqatAlsalah();
      return awaqatAlsalahModel;
    }

    if (Hive.box<AwaqatAlsalahModel>(AppConstants.kAwaqatAlsalahBox)
        .isNotEmpty) {
      awaqatAlsalahModel = awaqatAlsalahLocalDataSource.getAwaqatAlsalah();
      return awaqatAlsalahModel;
    }

    awaqatAlsalahModel = await awaqatAlsalahRemoteDataSource.getAwaqatAlsalah();
    return awaqatAlsalahModel;
  }
}
