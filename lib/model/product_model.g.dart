// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
  imageUrl: json['imageUrl'] as String,
  price: PriceModel.fromJson(json['price'] as Map<String, dynamic>),
  title: json['title'] as String,
  rate: RateModel.fromJson(json['rate'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'price': instance.price,
      'rate': instance.rate,
    };

PriceModel _$PriceModelFromJson(Map<String, dynamic> json) => PriceModel(
  value: (json['value'] as num).toInt(),
  currencySymbol: json['currencySymbol'] as String,
);

Map<String, dynamic> _$PriceModelToJson(PriceModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'currencySymbol': instance.currencySymbol,
    };

RateModel _$RateModelFromJson(Map<String, dynamic> json) => RateModel(
  value: (json['value'] as num).toDouble(),
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$RateModelToJson(RateModel instance) => <String, dynamic>{
  'value': instance.value,
  'count': instance.count,
};
