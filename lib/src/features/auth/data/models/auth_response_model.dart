class RegisterData {
  final String email;
  final String username;
  final String? image;
  final int? otp;

  const RegisterData({
    required this.email,
    required this.username,
    this.image,
    this.otp,
  });

  factory RegisterData.fromJson(Map<String, dynamic> json) => RegisterData(
    email: json['email'] as String,
    username: json['username'] as String,
    image: json['image'] as String?,
    otp: json['otp'] as int?,
  );

  Map<String, dynamic> toJson() => {
    'email': email,
    'username': username,
    'image': image,
    'otp': otp,
  };
}

/// Login response data
class LoginData {
  final String token;
  final String username;
  final String email;

  const LoginData({
    required this.token,
    required this.username,
    required this.email,
  });

  factory LoginData.fromJson(Map<String, dynamic> json) => LoginData(
    token: json['token'] as String,
    username: json['username'] as String,
    email: json['email'] as String,
  );

  Map<String, dynamic> toJson() => {
    'token': token,
    'username': username,
    'email': email,
  };
}

/// Register response model
class RegisterResponseModel {
  final String message;
  final RegisterData? data;
  final String status;

  const RegisterResponseModel({
    required this.message,
    this.data,
    required this.status,
  });

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      RegisterResponseModel(
        message: json['message'] as String,
        data: json['data'] != null
            ? RegisterData.fromJson(json['data'] as Map<String, dynamic>)
            : null,
        status: json['status'] as String,
      );

  Map<String, dynamic> toJson() => {
    'message': message,
    'data': data?.toJson(),
    'status': status,
  };

  bool get isSuccess => status == 'success';
}

/// Login response model
class LoginResponseModel {
  final String message;
  final LoginData? data;
  final String status;

  const LoginResponseModel({
    required this.message,
    this.data,
    required this.status,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        message: json['message'] as String,
        data: json['data'] != null
            ? LoginData.fromJson(json['data'] as Map<String, dynamic>)
            : null,
        status: json['status'] as String,
      );

  Map<String, dynamic> toJson() => {
    'message': message,
    'data': data?.toJson(),
    'status': status,
  };

  bool get isSuccess => status == 'success';
}

/// Profile data
class ProfileData {
  final int id;
  final String username;
  final String email;
  final String? image;

  const ProfileData({
    required this.id,
    required this.username,
    required this.email,
    this.image,
  });

  factory ProfileData.fromJson(Map<String, dynamic> json) => ProfileData(
    id: json['id'] as int,
    username: json['username'] as String,
    email: json['email'] as String,
    image: json['image'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'username': username,
    'email': email,
    'image': image,
  };
}

/// Profile response model
class ProfileResponseModel {
  final String? message;
  final ProfileData data;
  final String status;

  const ProfileResponseModel({
    this.message,
    required this.data,
    required this.status,
  });

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      ProfileResponseModel(
        message: json['message'] as String?,
        data: ProfileData.fromJson(json['data'] as Map<String, dynamic>),
        status: json['status'] as String,
      );

  Map<String, dynamic> toJson() => {
    'message': message,
    'data': data.toJson(),
    'status': status,
  };

  bool get isSuccess => status == 'success';
}

/// Generic message response model (for logout, otp, etc.)
class MessageResponseModel {
  final String message;
  final dynamic data;
  final String status;

  const MessageResponseModel({
    required this.message,
    this.data,
    required this.status,
  });

  factory MessageResponseModel.fromJson(Map<String, dynamic> json) =>
      MessageResponseModel(
        message: json['message'] as String,
        data: json['data'],
        status: json['status'] as String,
      );

  Map<String, dynamic> toJson() => {
    'message': message,
    'data': data,
    'status': status,
  };

  bool get isSuccess => status == 'success';
}
