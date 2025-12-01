import 'package:data/mappers/category_extension.dart';
import 'package:data/mappers/product_extension.dart';
import 'package:domain/entities/home_entity.dart';

import '../models/home_response.dart';

extension HomeExtension on HomeResponse {
  HomeEntity get toEntity => HomeEntity(
    location: location,
    categories: categories.map((e) => e.toEntity).toList(),
    products: products.map((e) => e.toEntity).toList(),
  );
}
