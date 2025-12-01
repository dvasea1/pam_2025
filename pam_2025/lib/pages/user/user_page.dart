import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pam_2025/list_items/user_list_item.dart';
import 'package:pam_2025/pages/user/users_controller.dart';
import 'package:pam_2025/pages/user/widgets/user_widget.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  void initState() {
    super.initState();
    Get.put(UsersController());
    UsersController controller = Get.find();
    controller.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    UsersController controller = Get.find();
    return Scaffold(
      body: Obx(
        () => controller.isLoading.value
            ? SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [CircularProgressIndicator()],
                ),
              )
            : ListView.builder(
                itemBuilder: (context, index) {
                  var item = controller.usersList[index];
                  if (item is UserListItem) {
                    return UserWidget(item: item);
                  } else {
                    return Container(height: 10, color: Colors.red);
                  }
                },
                itemCount: controller.usersList.length,
              ),
      ),
    );
  }
}
