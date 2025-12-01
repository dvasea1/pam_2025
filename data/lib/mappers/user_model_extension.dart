import 'package:data/models/user_model.dart';
import 'package:domain/entities/user_entity.dart';

extension UserModelExtension on UserModel {
  UserEntity get toEntity =>
  
      UserEntity(id: id,
          fistName: fullName.substring(0, ),
          lastName: lastName,
          email: email,
          avatarUrl: avatarUrl);
}