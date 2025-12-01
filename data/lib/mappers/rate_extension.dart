import 'package:data/models/product_model.dart';
import 'package:domain/entities/product_entity.dart';

extension RateExtension on RateModel {
  RateEntity get toEntity => RateEntity(value: value, count: count);
}