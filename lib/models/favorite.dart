import 'package:isar/isar.dart';

part 'favorite.g.dart';

@collection
class Favorite {
  Id id = Isar.autoIncrement;

  @Index()
  late int productId;

  late String title;

  late double price;

  late String thumbnail;

  Favorite({
    required this.productId,
    required this.title,
    required this.price,
    required this.thumbnail,
  });
}
