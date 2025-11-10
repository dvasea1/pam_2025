import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Category{
  final String title;
  final String iconUrl;

  Category({required this.title, required this.iconUrl});


  factory Category.fromJson(Map<String, dynamic> jsonMap) => _$CategoryFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}