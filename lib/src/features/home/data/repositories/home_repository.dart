import '../datasources/home_remote_data_source.dart';
import '../models/home_model.dart';

abstract class HomeRepository {
  Future<HomeModel> getHome();
}

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;

  HomeRepositoryImpl(this._remoteDataSource);

  @override
  Future<HomeModel> getHome() async {
    return await _remoteDataSource.getHome();
  }
}
