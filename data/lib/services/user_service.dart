import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/user_model.dart';

part 'user_service.g.dart';

@RestApi(baseUrl: 'https://dummyjson.com')
abstract class UserService {
  factory UserService(Dio dio, {String? baseUrl}) = _UserService;

  @GET('/users')
  Future<UserResponse> getUsers();
}


