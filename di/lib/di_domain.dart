import 'package:domain/repositories/home_repository.dart';
import 'package:domain/repositories/user_repository.dart';
import 'package:domain/use_cases/get_users_use_case.dart';
import 'package:domain/use_cases/get_home_use_case.dart';
import 'package:get_it/get_it.dart';

void injectDomain() {
  var getIt = GetIt.instance;
  getIt.registerSingleton<GetUsersUseCase>(GetUsersUseCase(userRepository: getIt.get<UserRepository>()));
  getIt.registerSingleton<GetHomeUseCase>(GetHomeUseCase(homeRepository: getIt.get<HomeRepository>()));
}
