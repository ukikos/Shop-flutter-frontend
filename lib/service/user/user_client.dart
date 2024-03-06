import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shop/model/user/user.dart';

part 'user_client.g.dart';

@RestApi()
abstract class UserClient {
  factory UserClient(Dio dio, {String baseUrl}) = _UserClient;

  @GET('/users/id/{id}')
  Future<User> getUserByUserId(@Path('id') int id);

  @GET('/users/id/{email}')
  Future<User> getUserByEmail(@Path('email') String email);
}