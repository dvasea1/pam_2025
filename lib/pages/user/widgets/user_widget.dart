import 'package:flutter/material.dart';
import 'package:pam_2025/list_items/user_list_item.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({super.key, required this.item});

  final UserListItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 50, height: 50, child: Image.network(item.avatarUrl)),
        Text(item.fullName, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
