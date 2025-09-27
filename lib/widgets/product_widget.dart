import 'package:flutter/material.dart';
import 'package:pam_2025/list_items/product_item.dart';
import 'package:pam_2025/resources/app_colors.dart';
import 'package:pam_2025/resources/app_icons.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.item});

  final ProductItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 160,
          child: Image.network(item.imageUrl, fit: BoxFit.contain),
        ),
        SizedBox(height: 16),
        Text(item.title, style: TextStyle(fontSize: 16, color: AppColors.color323135)),
        SizedBox(height: 8),
        Text('${item.currencySymbol} ${item.price}', style: TextStyle(fontSize: 16, color: AppColors.color323135)),
        Row(
          children: [
            AppIcons.starIcon,
            Text('${item.rate}(${item.countRate})', style: TextStyle(fontSize: 16, color: AppColors.neutral650)),
          ],
        ),
      ],
    );
  }
}
