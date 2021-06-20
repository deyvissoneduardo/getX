class UserModel {
  final int? id;
  final String? email, fistName, lastName, avatar;

  UserModel({
    required this.id,
    required this.email,
    required this.fistName,
    required this.lastName,
    required this.avatar,
  });

  static UserModel fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      fistName: json['first_name'],
      lastName: json['last_name'],
      avatar: json['avatar'],
    );
  }
}
