import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final int id;
  final String fistName;
  final String lastName;

  UserModel({required this.id, @JsonKey(name: 'firstName') required this.fistName, required this.lastName});

  factory UserModel.fromJson(Map<String, dynamic> jsonMap) => _$UserModelFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
