// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
  users: (json['users'] as List<dynamic>)
      .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{'users': instance.users};

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  id: (json['id'] as num).toInt(),
  fistName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  email: json['email'] as String,
  avatarUrl: json['image'] as String,
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'id': instance.id,
  'firstName': instance.fistName,
  'lastName': instance.lastName,
  'email': instance.email,
  'image': instance.avatarUrl,
};
