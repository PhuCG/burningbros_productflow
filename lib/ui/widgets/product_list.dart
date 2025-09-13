import 'package:burningbros_productflow/models/product.dart';
import 'package:burningbros_productflow/ui/widgets/product_card.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductList extends ConsumerWidget {
  const ProductList({
    super.key,
    required this.products,
    required this.onFavoriteToggle,
  });

  final List<Product> products;
  final Function(Product) onFavoriteToggle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (products.isEmpty) {
      return const Center(child: Text('No products available'));
    }

    return ListView.builder(
      padding: const EdgeInsets.only(top: 8, bottom: 16),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];

        return ProductCard(
          key: ValueKey(product.id),
          product: product,
          isFavorite: product.isFavorite,
          onFavoriteToggle: () => onFavoriteToggle(product),
        );
      },
    );
  }
}
