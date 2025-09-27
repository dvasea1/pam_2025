import 'package:flutter/material.dart';
import 'package:pam_2025/list_items/search_bar_list_item.dart';
import 'package:pam_2025/resources/app_colors.dart';
import 'package:pam_2025/resources/app_icons.dart';
import 'package:pam_2025/resources/strings.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key, required this.item});

  final SearchBarListItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.colorFBFBFC,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [BoxShadow(offset: Offset(0, 5), color: AppColors.color7F7B87, blurRadius: 10,)],
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 48,
      child: Row(
        children: [
          AppIcons.searchIcon,
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(Strings.findFavoriteItems, style: TextStyle(fontSize: 14, color: AppColors.color7F7B87)),
            ),
          ),
          AppIcons.searchVisualIcon,
        ],
      ),
    );
  }
}
