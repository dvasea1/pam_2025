import 'package:data/models/product_model.dart';
import 'package:domain/entities/product_entity.dart';

extension PriceExtension on PriceModel {
  PriceEntity get toEntity => PriceEntity(value: value, currencySymbol: currencySymbol);
}