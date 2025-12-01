import 'package:data/mappers/user_model_extension.dart';
import 'package:data/services/user_service.dart';
import 'package:domain/entities/user_entity.dart';
import 'package:domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserService userService;

  UserRepositoryImpl({required this.userService});

  @override
  Future<List<UserEntity>> getUsers() async {
    var userResponse = await userService.getUsers();
    return userResponse.users
        .map(
          (e) => e.toEntity,
    )
        .toList();
  }

  @override
  Future<UserEntity> getUser(int id) async {
    var user = await userService.getUser(id);
    return user.toEntity;
  }

}
