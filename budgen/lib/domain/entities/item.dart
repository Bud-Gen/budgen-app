import 'package:budgen/domain/entities/product.dart';

class Item extends Product {
  Item({
    required String id,
    required String name,
    required String code,
    String? description,
    String? imageUrl,
    required double price,
    required bool? isFavorite,
    String? path,
    required DateTime createdAt,
    required String createdBy,
    String? deletedBy,
  }) : super(
          id: id,
          name: name,
          code: code,
          description: description,
          imageUrl: imageUrl,
          price: price,
          path: path,
          isFavorite: isFavorite,
          createdAt: createdAt,
          createdBy: createdBy,
          deletedBy: deletedBy,
        );

  factory Item.fromMap(Map<String, dynamic> json) => new Item(
        id: json['id'],
        name: json['name'],
        code: json['code'],
        description: json['description'],
        imageUrl: json['imageUrl'],
        price: json['price'],
        path: json['path'],
        isFavorite: json['isFavorite'] == 1 ? true : false,
        createdAt: DateTime.fromMillisecondsSinceEpoch(json['createdAt']),
        createdBy: json['createdBy'],
        deletedBy: json['deletedBy'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'path': path,
        'code': code,
        'description': description,
        'imageUrl': imageUrl,
        'price': price,
        'isFavorite': convertBool(),
        'createdAt': createdAt!.millisecondsSinceEpoch,
        'createdBy': createdBy,
        'deletedBy': deletedBy,
      };

  int convertBool() {
    if (isFavorite != null && isFavorite!) return 1;
    return 0;
  }

  bool equals(Item other) {
    return other.id == id &&
        other.name == name &&
        other.path == path &&
        other.code == code &&
        other.description == description &&
        other.imageUrl == imageUrl &&
        other.price == price &&
        other.isFavorite == isFavorite &&
        other.createdAt == createdAt &&
        other.createdBy == createdBy &&
        other.deletedBy == deletedBy;
  }
}
