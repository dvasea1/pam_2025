import 'package:flutter/material.dart';
import 'package:pam_2025/list_items/banner_list_item.dart';
import 'package:pam_2025/widgets/banner_widget.dart';

class BannerViewPagerWidget extends StatelessWidget {
  const BannerViewPagerWidget({super.key, required this.banners});

  final List<BannerListItem> banners;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 38),
      height: 150,
      child: PageView.builder(
        itemCount: banners.length,
        itemBuilder: (BuildContext context, int index) {
          return BannerWidget(item: banners[index]);
        },
      ),
    );
  }
}
