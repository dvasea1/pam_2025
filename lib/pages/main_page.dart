import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pam_2025/list_items/nav_bar_list_item.dart';
import 'package:pam_2025/list_items/search_bar_list_item.dart';
import 'package:pam_2025/resources/strings.dart';
import 'package:pam_2025/widgets/search_bar_widget.dart';
import 'package:pam_2025/widgets/top_nav_bar_widget.dart';

import 'MainController.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Get.lazyPut(() => MainController());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MainController controller = Get.find();
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.items.length,
          padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 16),
          itemBuilder: (BuildContext context, int index) {
            var item = controller.items[index];
            if (item is NavBarListItem) {
              return TopNavBarWidget(item: item);
            } else if (item is SearchBarListItem) {
              return SearchBarWidget(item: item);
            }
            return Text('Not found');
          },
        ),
      ),
    );
  }
}
