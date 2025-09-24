import 'package:get/get.dart';
import 'package:pam_2025/list_items/list_item.dart';
import 'package:pam_2025/list_items/search_bar_list_item.dart';

import '../list_items/nav_bar_list_item.dart';

class MainController extends GetxController {
  RxList<ListItem> items = RxList();

  @override
  void onInit() {
    super.onInit();
    addItems();
  }
  void addItems() {
    items.add(NavBarListItem(location: 'Moldova, Chisinau'));
    items.add(SearchBarListItem());
  }
}
