import 'package:data/models/product_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'category.dart';

part 'home_response.g.dart';

@JsonSerializable()
class HomeResponse {
  final String location;
  final List<Category> categories;
  final List<ProductModel> products;

  HomeResponse({required this.location, required this.categories, required this.products});

  factory HomeResponse.fromJson(Map<String, dynamic> jsonMap) => _$HomeResponseFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$HomeResponseToJson(this);
}
