import 'package:data/repositories/user_repository_impl.dart';
import 'package:data/repositories/home_repository_impl.dart';
import 'package:data/services/user_service.dart';
import 'package:dio/dio.dart';
import 'package:domain/repositories/user_repository.dart';
import 'package:domain/repositories/home_repository.dart';
import 'package:get_it/get_it.dart';

void injectData() {
  var getIt = GetIt.instance;

  //init api services
  Dio dio = Dio();
  getIt.registerSingleton<UserService>(UserService(dio));

  //init repositories
  getIt.registerSingleton<UserRepository>(UserRepositoryImpl(userService: getIt.get<UserService>()));

  getIt.registerSingleton<HomeRepository>(HomeRepositoryImpl());
}
