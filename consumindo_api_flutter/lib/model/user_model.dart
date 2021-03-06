import 'dart:convert';

import 'user_type.dart';

class UserModel {
  String id;
  String name;
  String username;
  List<UserType> types;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'types': types.map((x) => x.toMap()).toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      username: map['username'] ?? '',
      types: List<UserType>.from(map['types']?.map((x) => UserType.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
