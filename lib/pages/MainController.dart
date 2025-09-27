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
import 'package:pam_2025/resources/strings.dart';

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
    items.add(SectionItem(tag: "categories", title: Strings.categories, rightButtonTitle: Strings.viewAll));
    items.add(
      CategoriesCarouselItem(
        categoriesList: [
          CategoryListItem(
            category: Category(
              title: 'Fashion',
              iconUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4zVnKa2JEov4TtGpFYAhESwSC9tRPfrICKg&s',
            ),
          ),
          CategoryListItem(
            category: Category(
              title: 'Fitness',
              iconUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4zVnKa2JEov4TtGpFYAhESwSC9tRPfrICKg&s',
            ),
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
    items.add(
      ProductItem(
        imageUrl:
            'https://www.att.com/scmsassets/global/devices/phones/apple/apple-iphone-17-pro-max/defaultimage/cosmic-orange-hero-zoom.png',
        title: 'Iphone 17 pro Max',
        price: 32000,
        discountPrice: null,
        currencySymbol: '\$',
        rate: 4.8,
        countRate: 340,
        isFavourite: false,
      ),
    );
  }
}
