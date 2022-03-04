abstract class Product {
  String? id;
  String? name;
  String? code;
  String? description;
  String? imageUrl;
  double? price;
  String? path;
  bool? isFavorite;
  DateTime? createdAt;
  String? createdBy;
  String? deletedBy;

  Product({
    this.id,
    this.name,
    this.code,
    this.description,
    this.imageUrl,
    this.price,
    this.path,
    this.isFavorite,
    this.createdAt,
    this.createdBy,
    this.deletedBy,
  });
}
