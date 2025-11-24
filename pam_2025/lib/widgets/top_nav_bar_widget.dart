import 'package:flutter/material.dart';
import 'package:pam_2025/list_items/nav_bar_list_item.dart';
import 'package:pam_2025/resources/app_colors.dart';
import 'package:pam_2025/resources/strings.dart';

import '../resources/app_icons.dart';

class TopNavBarWidget extends StatelessWidget {
  const TopNavBarWidget({super.key, required this.item, required this.onTap});

  final NavBarListItem item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Strings.location, style: TextStyle(color: AppColors.neutral650, fontSize: 14)),
              Text(item.location, style: TextStyle(color: AppColors.neutral950, fontSize: 14)),
            ],
          ),
          Expanded(child: Container()),
          InkWell(onTap: onTap, child: AppIcons.notificationIcon),
        ],
      ),
    );
  }
}
