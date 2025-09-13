import 'package:isar/isar.dart';

part 'favorite.g.dart';

@collection
class Favorite {
  Id id; // This maps to the product id

  String title;

  double price;

  String thumbnail;

  Favorite({
    required this.id,
    required this.title,
    required this.price,
    required this.thumbnail,
  });
}
