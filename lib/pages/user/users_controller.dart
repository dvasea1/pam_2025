import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:pam_2025/list_items/list_item.dart';
import 'package:pam_2025/list_items/user_list_item.dart';
import 'package:pam_2025/model/user_model.dart';
import 'package:pam_2025/services/user_service.dart';

extension UserModelExtension on UserModel {
  UserListItem get toItem => UserListItem(avatarUrl: avatarUrl, fullName: "$fistName$lastName");
}

class UsersController extends GetxController {
  UserService userService = UserService(Dio());

  RxList<ListItem> usersList = RxList();
  RxBool isLoading = RxBool(false);

  void getUsers() async {
    isLoading.value = true;

    await Future.delayed(Duration(seconds: 3));
    await userService
        .getUsers()
        .then((value) {
          isLoading.value = false;
          usersList.addAll(value.users.map((e) => e.toItem));
        })
        .catchError((value) {
          isLoading.value = false;
        });
  }
}
