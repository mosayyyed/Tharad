import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/dio_client.dart';
import '../models/home_model.dart';

abstract class HomeRemoteDataSource {
  Future<HomeModel> getHome();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final DioClient _dioClient;

  HomeRemoteDataSourceImpl(this._dioClient);

  @override
  Future<HomeModel> getHome() async {
    final response = await _dioClient.get(ApiConstants.home);
    return HomeModel.fromJson(response.data as Map<String, dynamic>);
  }
}
