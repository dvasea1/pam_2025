import 'package:domain/entities/category_entity.dart';
import 'package:domain/entities/product_entity.dart';

class HomeEntity {
  final String location;
  final List<CategoryEntity > categories;
  final List<ProductEntity > products;

  HomeEntity({required this.location, required this.categories, required this.products});
}