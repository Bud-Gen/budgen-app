import 'package:flutter/material.dart';

class DriveFile {
  String id;
  String name;
  String kind;
  String mineType;

  DriveFile({
    @required this.id,
    @required this.name,
    @required this.kind,
    @required this.mineType,
  });

  factory DriveFile.fromMap(Map<String, dynamic> json) => new DriveFile(
        id: json["id"],
        name: json["name"],
        kind: json["kind"],
        mineType: json["mineType"],
      );
}
