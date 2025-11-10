import 'package:json_annotation/json_annotation.dart';
import 'package:pam_2025/model/category.dart';
import 'package:pam_2025/model/product_model.dart';

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
