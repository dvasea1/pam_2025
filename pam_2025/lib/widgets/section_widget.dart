
import 'package:flutter/material.dart';
import 'package:pam_2025/list_items/section_item.dart';
import 'package:pam_2025/resources/app_colors.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({super.key, required this.item, required this.onTap});

  final Function(String tag) onTap;
  final SectionItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: Text(item.title, style: TextStyle(fontSize: 18, color: AppColors.color323135)),
          ),
          if (item.rightButtonTitle != null)
            InkWell(
              onTap: () {
                onTap.call(item.tag);
              },
              child: Text(item.rightButtonTitle!, style: TextStyle(fontSize: 14, color: AppColors.color57545B)),
            ),
        ],
      ),
    );
  }
}
