import 'package:pam_2025/list_items/list_item.dart';

class ProductItem extends ListItem {
  final String imageUrl;
  final String title;
  final double price;
  final double? discountPrice;
  final double rate;
  final int countRate;
  final bool isFavourite;
  final String currencySymbol;

  ProductItem({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.discountPrice,
    required this.rate,
    required this.countRate,
    required this.isFavourite,
    required this.currencySymbol
  });
}
