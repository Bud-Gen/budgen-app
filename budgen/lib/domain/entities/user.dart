import 'package:flutter/material.dart';

class UserCredentials {
  String id;
  String name;
  String email;

  UserCredentials({
    @required this.id,
    @required this.name,
    @required this.email,
  });

  factory UserCredentials.fromMap(Map<String, dynamic> json) =>
      new UserCredentials(
        id: json["id"],
        name: json["name"],
        email: json["email"],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'email': email,
      };
}
