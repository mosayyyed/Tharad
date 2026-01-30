import 'package:get_it/get_it.dart';
import 'package:tharad/src/core/services/hive_cache_service.dart';
import 'package:tharad/src/core/services/image_picker_service.dart';
import 'package:tharad/src/core/services/secure_storage_service.dart';
import 'package:tharad/src/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:tharad/src/features/auth/data/repositories/auth_repository.dart';
import 'package:tharad/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:tharad/src/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:tharad/src/features/auth/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:tharad/src/features/profile/data/datasources/profile_remote_data_source.dart';
import 'package:tharad/src/features/profile/data/repositories/profile_repository.dart';
import 'package:tharad/src/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:tharad/src/features/profile/presentation/cubits/profile_cubit/profile_cubit.dart';

import '../network/dio_client.dart';

final sl = GetIt.instance;

Future<void> initializeServiceLocator() async {
  // ============================================================================
  // Core Services
  // ============================================================================
  sl.registerLazySingleton<SecureStorageService>(() => SecureStorageService());
  sl.registerLazySingleton<HiveCacheService>(() => HiveCacheService());
  sl.registerLazySingleton<DioClient>(() => DioClient(sl()));
  sl.registerLazySingleton<ImagePickerService>(() => ImagePickerService());

  // ============================================================================
  // Auth Feature
  // ============================================================================

  // Data Sources
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(sl()),
  );

  // Repositories
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(sl(), sl()),
  );

  // Cubits
  sl.registerFactory<RegisterCubit>(() => RegisterCubit(sl()));
  sl.registerFactory<LoginCubit>(() => LoginCubit(sl()));

  // ============================================================================
  // Profile Feature
  // ============================================================================

  // Data Sources
  sl.registerLazySingleton<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSourceImpl(sl()),
  );

  // Repositories
  sl.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(
      sl<ProfileRemoteDataSource>(),
      sl<HiveCacheService>(),
    ),
  );

  // Cubits
  sl.registerFactory<ProfileCubit>(
    () => ProfileCubit(sl<ProfileRepository>(), sl<AuthRepository>()),
  );
}
