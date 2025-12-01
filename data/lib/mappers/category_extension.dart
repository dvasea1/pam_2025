import 'package:data/models/category.dart';
import 'package:domain/entities/category_entity.dart';

extension CategoryExtension on Category {
  CategoryEntity get toEntity => CategoryEntity(title: title, iconUrl: iconUrl);
}