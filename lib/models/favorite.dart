import 'package:isar/isar.dart';
import 'product.dart';

part 'favorite.g.dart';

@collection
class Favorite {
  Id id = Isar.autoIncrement;

  @Index()
  late int productId;

  late String title;
  late String description;
  late double price;
  late double discountPercentage;
  late double rating;
  late int stock;
  late String category;
  late String thumbnail;
  late List<String> images;

  Favorite({
    required this.productId,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.category,
    required this.thumbnail,
    required this.images,
  });

  // Convert Favorite to Product for UI display
  Product toProduct() {
    return Product(
      id: productId,
      title: title,
      description: description,
      price: price,
      discountPercentage: discountPercentage,
      rating: rating,
      stock: stock,
      category: category,
      thumbnail: thumbnail,
      images: images,
    );
  }

  // Factory method to create Favorite from Product
  factory Favorite.fromProduct(Product product) {
    return Favorite(
      productId: product.id,
      title: product.title,
      description: product.description,
      price: product.price,
      discountPercentage: product.discountPercentage,
      rating: product.rating,
      stock: product.stock,
      category: product.category,
      thumbnail: product.thumbnail,
      images: product.images,
    );
  }
}
