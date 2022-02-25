import 'package:flutter/widgets.dart';
import 'dart:convert';

class Project {
  final String id;
  final String name;
  final Map<String, dynamic>? items;
  final Map<String, dynamic>? workers;
  final String email;
  final bool? isFinished;
  final double price;
  final double discount;
  final DateTime createdAt;
  final String createdBy;
  final String? deletedBy;

  Project({
    required this.id,
    required this.name,
    this.items,
    this.workers,
    required this.email,
    this.isFinished,
    required this.price,
    required this.discount,
    required this.createdAt,
    required this.createdBy,
    this.deletedBy,
  });

  factory Project.fromMap(Map<String, dynamic> project) => new Project(
        id: project['id'],
        name: project['name'],
        items: json.decode(project['items']),
        workers: json.decode(project['workers']),
        email: project['email'],
        isFinished: project['isFavorite'] != 1 ? false : true,
        price: project['price'],
        discount: project['discount'],
        createdAt: DateTime.fromMillisecondsSinceEpoch(project['createdAt']),
        createdBy: project['createdBy'],
        deletedBy: project['deletedBy'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'items': json.encode(items),
        'workers': json.encode(workers),
        'email': email,
        'price': price,
        'isFinished': convertToBit(),
        'discount': discount,
        'createdAt': createdAt.millisecondsSinceEpoch,
        'createdBy': createdBy,
        'deletedBy': deletedBy,
      };

  convertToBit() {
    if (isFinished == null || isFinished == false) {
      return 0;
    }
    return 1;
  }
}
