import 'package:domain/entities/user_entity.dart';
import 'package:domain/repositories/user_repository.dart';

class GetUsersUseCase {
  final UserRepository userRepository;

  GetUsersUseCase({required this.userRepository});

  Future<List<UserEntity>> call() {
    return userRepository.getUsers();
  }
}
