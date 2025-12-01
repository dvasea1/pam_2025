import 'package:data/mappers/price_extension.dart';
import 'package:data/mappers/rate_extension.dart';
import 'package:data/models/product_model.dart';
import 'package:domain/entities/product_entity.dart';

extension ProductExtension on ProductModel {
  ProductEntity get toEntity =>
      ProductEntity(imageUrl: imageUrl, title: title, price: price.toEntity, rate: rate.toEntity);
}
