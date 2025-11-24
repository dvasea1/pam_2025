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
          (e) =>
              UserEntity(id: e.id, fistName: e.fistName, lastName: e.lastName, email: e.email, avatarUrl: e.avatarUrl),
        )
        .toList();
  }
}
