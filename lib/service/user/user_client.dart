import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shop/model/user/user.dart';

part 'user_client.g.dart';

@RestApi()
abstract class UserClient {
  factory UserClient(Dio dio, {String baseUrl}) = _UserClient;

  @GET('/categories/{id}')
  Future<User> getUserByUserId(@Path('id') String id);

  @GET('/categories/{email}')
  Future<User> getUserByEmail(@Path('email') String email);
}