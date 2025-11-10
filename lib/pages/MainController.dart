import 'dart:async';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:pam_2025/list_items/banner_list_item.dart';
import 'package:pam_2025/list_items/banner_view_pager_item.dart';
import 'package:pam_2025/list_items/categories_carousel_item.dart';
import 'package:pam_2025/list_items/category_list_item.dart';
import 'package:pam_2025/list_items/list_item.dart';
import 'package:pam_2025/list_items/product_item.dart';
import 'package:pam_2025/list_items/search_bar_list_item.dart';
import 'package:pam_2025/list_items/section_item.dart';
import 'package:pam_2025/model/category.dart';
import 'package:pam_2025/model/home_response.dart';
import 'package:pam_2025/model/user_model.dart';
import 'package:pam_2025/resources/strings.dart';

import '../list_items/nav_bar_list_item.dart';

class MainController extends GetxController {
  RxList<ListItem> items = RxList();
  Rx<String> fullName = Rx("Ion");

  String json = '''
{
"location": "Dhaka, Bangladesh",

"categories": [
{
"id":1,
"iconUrl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4zVnKa2JEov4TtGpFYAhESwSC9tRPfrICKg&s",
"title":"Fashion"
}
],
"banners":[
{
"tag": "promo",
"converImage":"asdasd"
}
],
"products": [
{
"imageUrl":"https://www.att.com/scmsassets/global/devices/phones/apple/apple-iphone-17-pro-max/defaultimage/cosmic-orange-hero-zoom.png",
"id":123,
"title": "Iphone 17, pro max",
"price": {
"value": 1200,
"currencySymbol": "\$",
"newValue": null
},
"rate": {
"value": 3.5,
"count":120
}
}
]
}
   ''';

  var fullNameController = StreamController<String>();
  StreamSubscription? streamSubscription;

  void listenFullName() {
    streamSubscription = fullNameController.stream.listen((value) {});
    streamSubscription?.cancel();

    fullName.listen((value) {
      print('listenFullName: $value');
    });
  }

  void changeName() {
    fullName.value = "Vasile";
  }



  @override
  void onInit() {
    super.onInit();
    addItems();
    listenFullName();
  }

  void addItems() async {
    HomeResponse response = HomeResponse.fromJson(jsonDecode(json));

    print('response : ${response.location}');

    items.add(NavBarListItem(location: response.location));
    items.add(SearchBarListItem());
    //items.add(SectionItem(tag: "categories", title: Strings.categories, rightButtonTitle: Strings.viewAll));
    items.add(
      CategoriesCarouselItem(categoriesList: response.categories.map((e) => CategoryListItem(category: e)).toList()),
    );

    items.add(
      BannerViewPagerItem(
        banners: [
          BannerListItem(
            imageUrl: 'https://t3.ftcdn.net/jpg/03/16/91/28/360_F_316912806_RCeHVmUx5LuBMi7MKYTY5arkE4I0DcpU.jpg',
          ),
          BannerListItem(
            imageUrl:
                'https://static.vecteezy.com/system/resources/thumbnails/003/226/128/small_2x/social-media-marketing-web-banner-digital-marketing-cover-banner-vector.jpg',
          ),
        ],
      ),
    );
    items.add(
      BannerViewPagerItem(
        banners: [
          BannerListItem(
            imageUrl: 'https://t3.ftcdn.net/jpg/03/16/91/28/360_F_316912806_RCeHVmUx5LuBMi7MKYTY5arkE4I0DcpU.jpg',
          ),
          BannerListItem(
            imageUrl:
                'https://static.vecteezy.com/system/resources/thumbnails/003/226/128/small_2x/social-media-marketing-web-banner-digital-marketing-cover-banner-vector.jpg',
          ),
        ],
      ),
    );

    items.add(SectionItem(tag: "hot_deals", title: Strings.hotDeals, rightButtonTitle: Strings.viewAll));

    items.addAll(
      response.products
          .map(
            (e) => ProductItem(
              imageUrl: e.imageUrl,
              title: e.title,
              price: e.price.value,
              discountPrice: null,
              currencySymbol: e.price.currencySymbol,
              rate: e.rate.value,
              countRate: e.rate.count,
              isFavourite: false,
            ),
          )
          .toList(),
    );
  }
}
