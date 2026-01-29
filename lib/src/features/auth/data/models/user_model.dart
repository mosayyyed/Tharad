class UserModel {
  final int id;
  final String username;
  final String email;
  final String? image;

  const UserModel({
    required this.id,
    required this.username,
    required this.email,
    this.image,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
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

  UserModel copyWith({
    int? id,
    String? username,
    String? email,
    String? image,
  }) => UserModel(
    id: id ?? this.id,
    username: username ?? this.username,
    email: email ?? this.email,
    image: image ?? this.image,
  );
}
