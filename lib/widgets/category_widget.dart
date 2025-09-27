import 'package:flutter/material.dart';
import 'package:pam_2025/list_items/category_list_item.dart';
import 'package:pam_2025/resources/app_colors.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.item});

  final CategoryListItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: Column(
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(color: AppColors.colorEBEFFF, borderRadius: BorderRadius.circular(8)),
            child: Center(child: SizedBox(
                width: 28,
                height: 28,
                child: Image.network(item.category.iconUrl))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(item.category.title, style: TextStyle(color: AppColors.color57545B, fontSize: 14)),
          ),
        ],
      ),
    );
  }
}
