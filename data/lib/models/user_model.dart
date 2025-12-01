import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserResponse {
  final List<UserModel> users;

  UserResponse({required this.users});

  factory UserResponse.fromJson(Map<String, dynamic> jsonMap) => _$UserResponseFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}

@JsonSerializable()
class UserModel {
  final int id;
  final String fullName;
  final String email;
  final String avatarUrl;

  UserModel({
    required this.id,
    @JsonKey(name: 'fullName') required this.fullName,
    required this.email,
    @JsonKey(name: 'image') required this.avatarUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> jsonMap) => _$UserModelFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
