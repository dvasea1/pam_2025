import 'package:flutter/material.dart';
import 'package:pam_2025/widgets/category_widget.dart';

import '../list_items/categories_carousel_item.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key, required this.item});

  final CategoriesCarouselItem item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.builder(
        itemCount: item.categoriesList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryWidget(item: item.categoriesList[index]);
        },
      ),
    );
  }
}
