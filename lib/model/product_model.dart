
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  final String imageUrl;
  final String title;
  final PriceModel price;
  final RateModel rate;

  factory ProductModel.fromJson(Map<String, dynamic> jsonMap) => _$ProductModelFromJson(jsonMap);

  ProductModel({required this.imageUrl, required this.price, required this.title, required this.rate});

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}


@JsonSerializable()
class PriceModel {
  final int value;
  final String currencySymbol;

  PriceModel({required this.value,required this.currencySymbol});


  factory PriceModel.fromJson(Map<String, dynamic> jsonMap) => _$PriceModelFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$PriceModelToJson(this);
}


@JsonSerializable()
class RateModel {
  final double value;
  final int count;

  RateModel({required this.value,required this.count});


  factory RateModel.fromJson(Map<String, dynamic> jsonMap) => _$RateModelFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$RateModelToJson(this);
}