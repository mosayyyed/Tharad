class RegisterRequestModel {
  final String email;
  final String username;
  final String password;
  final String passwordConfirmation;
  final String? profileImage;

  const RegisterRequestModel({
    required this.email,
    required this.username,
    required this.password,
    required this.passwordConfirmation,
    this.profileImage,
  });

  RegisterRequestModel copyWith({
    String? email,
    String? username,
    String? password,
    String? passwordConfirmation,
    String? profileImage,
  }) => RegisterRequestModel(
    email: email ?? this.email,
    username: username ?? this.username,
    password: password ?? this.password,
    passwordConfirmation: passwordConfirmation ?? this.passwordConfirmation,
    profileImage: profileImage ?? this.profileImage,
  );
}
