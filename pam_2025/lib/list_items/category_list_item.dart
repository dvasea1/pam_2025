import 'package:domain/entities/category_entity.dart';
import 'package:pam_2025/list_items/list_item.dart';

class CategoryListItem extends ListItem{
  final CategoryEntity category;

  CategoryListItem({required this.category});
}