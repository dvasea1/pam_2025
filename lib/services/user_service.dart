import 'package:dio/dio.dart';
import 'package:pam_2025/model/user_model.dart';
import 'package:retrofit/retrofit.dart';

part 'user_service.g.dart';

@RestApi(baseUrl: 'https://dummyjson.com')
abstract class UserService {
  factory UserService(Dio dio, {String? baseUrl}) = _UserService;

  @GET('/users')
  Future<UserResponse> getUsers();
}


