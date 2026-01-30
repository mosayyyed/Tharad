import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/dio_client.dart';
import '../../../auth/data/models/auth_response_model.dart';
import '../models/update_profile_request_model.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileResponseModel> getProfile();

  Future<ProfileResponseModel> updateProfile(UpdateProfileRequestModel request);
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final DioClient _dioClient;

  ProfileRemoteDataSourceImpl(this._dioClient);

  @override
  Future<ProfileResponseModel> getProfile() async {
    final response = await _dioClient.get(ApiConstants.profileDetails);
    return ProfileResponseModel.fromJson(response.data as Map<String, dynamic>);
  }

  @override
  Future<ProfileResponseModel> updateProfile(
    UpdateProfileRequestModel request,
  ) async {
    final formData = await request.toFormData();

    final response = await _dioClient.uploadFile(
      ApiConstants.updateProfile,
      data: formData,
    );

    return ProfileResponseModel.fromJson(response.data as Map<String, dynamic>);
  }
}
