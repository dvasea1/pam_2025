import 'package:flutter/material.dart';
import 'package:pam_2025/list_items/banner_list_item.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key, required this.item});

  final BannerListItem item;

  @override
  Widget build(BuildContext context) {
    return Image.network(item.imageUrl);
  }
}
