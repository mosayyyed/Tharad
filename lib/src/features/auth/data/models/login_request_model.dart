class LoginRequestModel {
  final String email;
  final String password;

  const LoginRequestModel({required this.email, required this.password});

  LoginRequestModel copyWith({String? email, String? password}) =>
      LoginRequestModel(
        email: email ?? this.email,
        password: password ?? this.password,
      );
}
