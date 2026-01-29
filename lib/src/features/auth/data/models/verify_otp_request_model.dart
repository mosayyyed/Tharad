class VerifyOtpRequestModel {
  final String email;
  final int otp;

  const VerifyOtpRequestModel({required this.email, required this.otp});

  /// Convert to query parameters
  Map<String, dynamic> toQueryParameters() => {
    'email': email,
    'otp': otp.toString(),
  };

  VerifyOtpRequestModel copyWith({String? email, int? otp}) =>
      VerifyOtpRequestModel(email: email ?? this.email, otp: otp ?? this.otp);
}
