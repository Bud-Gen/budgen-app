import 'package:budgen/domain/entities/product.dart';

class Worker extends Product {
  final String? phone;
  final String? type;
  final String? address;

  Worker({
    required String id,
    required String name,
    required String code,
    required String description,
    required String imageUrl,
    required double price,
    this.phone,
    this.type,
    this.address,
    bool? isFavorite,
    required String path,
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

  factory Worker.fromMap(Map<String, dynamic> json) => new Worker(
        id: json['id'],
        name: json['name'],
        code: json['code'],
        description: json['description'],
        imageUrl: json['url'],
        price: json['price'],
        phone: json['phone'],
        type: json['type'],
        address: json['adress'],
        path: json['path'],
        isFavorite: json['isFavorite'] == 1 ? true : false,
        createdAt: DateTime.fromMillisecondsSinceEpoch(json['createdAt']),
        createdBy: json['createdBy'],
        deletedBy: json['deletedAt'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'path': path,
        'code': code,
        'description': description,
        'imageUrl': imageUrl,
        'price': price,
        'phone': phone,
        'type': type,
        'address': address,
        'isFavorite': convertBool(),
        'createdAt': createdAt?.millisecondsSinceEpoch,
        'createdBy': createdBy,
        'deletedBy': deletedBy,
      };

  int convertBool() {
    if (isFavorite != null && isFavorite!) return 1;
    return 0;
  }

  bool equals(Worker other) {
    return other.id == id &&
        other.name == name &&
        other.path == path &&
        other.code == code &&
        other.description == description &&
        other.imageUrl == imageUrl &&
        other.price == price &&
        other.phone == phone &&
        other.type == type &&
        other.address == address &&
        other.isFavorite == isFavorite &&
        other.createdAt == createdAt &&
        other.createdBy == createdBy &&
        other.deletedBy == deletedBy;
  }
}
