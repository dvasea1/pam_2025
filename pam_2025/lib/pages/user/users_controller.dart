import 'package:domain/entities/user_entity.dart';
import 'package:domain/use_cases/get_users_use_case.dart';
import 'package:get/get.dart';
import 'package:pam_2025/list_items/list_item.dart';
import 'package:pam_2025/list_items/user_list_item.dart';

extension UserModelExtension on UserEntity {
  UserListItem get toItem => UserListItem(avatarUrl: avatarUrl, fullName: "$fistName$lastName");
}

class UsersController extends GetxController {
  GetUsersUseCase getUsersUseCase;

  UsersController({required this.getUsersUseCase});

  /*UserService userService = UserService(Dio());*/

  RxList<ListItem> usersList = RxList();
  RxBool isLoading = RxBool(false);

  void getUsers() async {
    isLoading.value = true;

    await Future.delayed(Duration(seconds: 3));
    await getUsersUseCase
        .call()
        .then((value) {
          isLoading.value = false;
          usersList.addAll(value.map((e) => e.toItem));
        })
        .catchError((value) {
          isLoading.value = false;
        });
  }
}
