class UserModel {
  final String name;

  UserModel({required this.name});

  // Factory method dari JSON
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(name: json['name'] ?? '');
  }

  // Convert ke JSON
  Map<String, dynamic> toJson() {
    return {'name': name};
  }
}
