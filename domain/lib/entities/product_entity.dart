class ProductEntity {
  final String imageUrl;
  final String title;
  final PriceEntity price;
  final RateEntity rate;

  ProductEntity({required this.imageUrl, required this.title, required this.price, required this.rate});
}


class PriceEntity {
  final int value;
  final String currencySymbol;

  PriceEntity({required this.value, required this.currencySymbol});
}

class RateEntity {
  final double value;
  final int count;

  RateEntity({required this.value, required this.count});

}