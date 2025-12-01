import 'package:domain/entities/home_entity.dart';
import 'package:domain/entities/user_entity.dart';
import 'package:domain/use_cases/get_users_use_case.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:pam_2025/base/base_get_x_controller.dart';
import 'package:pam_2025/list_items/list_item.dart';
import 'package:pam_2025/list_items/user_list_item.dart';

import '../../list_items/nav_bar_list_item.dart';

extension UserModelExtension on UserEntity {
  UserListItem get toItem => UserListItem(avatarUrl: avatarUrl, fullName: "$fistName$lastName");
}

class Repo {
  Future<HomeEntity> getData() async{
    await Future.delayed(Duration(seconds: 2));
    return HomeEntity(location: "location", categories: [], products: []);
  }
}

class UsersController extends BaseGetXController {
  GetUsersUseCase getUsersUseCase() => getIt.get<GetUsersUseCase>();

  RxList<ListItem> usersList = RxList();
  RxList<ListItem> items = RxList();
  RxBool isLoading = RxBool(false);

  Repo repository = Repo();

  void getUsers() async {
    isLoading.value = true;

 var homeData =   await  repository.getData();
    items.add(NavBarListItem(location: homeData.location));

    await Future.delayed(Duration(seconds: 3));
    await getUsersUseCase()
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
