import 'package:tharad/src/features/home/data/datasources/home_remote_data_source.dart';
import 'package:tharad/src/features/home/data/models/home_model.dart';
import 'package:tharad/src/features/home/data/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;

  HomeRepositoryImpl(this._remoteDataSource);

  @override
  Future<HomeModel> getHome() async {
    return await _remoteDataSource.getHome();
  }
}
