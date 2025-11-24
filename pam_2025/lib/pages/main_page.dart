import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pam_2025/list_items/banner_view_pager_item.dart';
import 'package:pam_2025/list_items/categories_carousel_item.dart';
import 'package:pam_2025/list_items/nav_bar_list_item.dart';
import 'package:pam_2025/list_items/product_item.dart';
import 'package:pam_2025/list_items/search_bar_list_item.dart';
import 'package:pam_2025/list_items/section_item.dart';
import 'package:pam_2025/widgets/banner_view_pager_widget.dart';
import 'package:pam_2025/widgets/carousel_widget.dart';
import 'package:pam_2025/widgets/product_widget.dart';
import 'package:pam_2025/widgets/search_bar_widget.dart';
import 'package:pam_2025/widgets/section_widget.dart';
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
    Get.lazyPut(() => MainController(getHomeUseCase: null));
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
      body: Container(
        color: Colors.white,
        child: Obx(
          () => ListView.builder(
            itemCount: controller.items.length,
            padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 16),
            itemBuilder: (BuildContext context, int index) {
              var item = controller.items[index];
              if (item is NavBarListItem) {
                return TopNavBarWidget(item: item, onTap: (){
                  controller.changeName();
                },);
              } else if (item is SearchBarListItem) {
                return SearchBarWidget(item: item);
              } else if (item is SectionItem) {
                return SectionWidget(
                  item: item,
                  onTap: (String tag) {
                    print('ontap section: $tag');
                  },
                );
              } else if (item is CategoriesCarouselItem) {
                return CarouselWidget(item: item);
              } else if (item is BannerViewPagerItem) {
                return BannerViewPagerWidget(banners: item.banners);
              } else if (item is ProductItem) {
                return ProductWidget(item: item);
              }
              return Text('Not found');
            },
          ),
        ),
      ),
    );
  }
}
