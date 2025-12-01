import 'dart:convert';

import 'package:data/mappers/home_extension.dart';
import 'package:domain/entities/home_entity.dart';
import 'package:domain/repositories/home_repository.dart';

import '../models/home_response.dart';

class HomeRepositoryImpl implements HomeRepository {
  @override
  Future<HomeEntity> getHomeData() async {

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

    HomeResponse response = HomeResponse.fromJson(jsonDecode(json));
    return response.toEntity;
  }

}