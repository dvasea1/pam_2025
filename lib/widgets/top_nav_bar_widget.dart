import 'package:flutter/material.dart';
import 'package:pam_2025/list_items/nav_bar_list_item.dart';
import 'package:pam_2025/resources/app_colors.dart';
import 'package:pam_2025/resources/strings.dart';

import '../resources/app_icons.dart';

class TopNavBarWidget extends StatelessWidget {
  const TopNavBarWidget({super.key, required this.item});

  final NavBarListItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Strings.location, style: TextStyle(color: AppColors.neutral650, fontSize: 14)),
            Text(item.location, style: TextStyle(color: AppColors.neutral950, fontSize: 14)),
          ],
        ),
        Expanded(child: Container()),
        AppIcons.notificationIcon,
      ],
    );
  }
}
