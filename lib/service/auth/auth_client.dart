import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';
import 'package:shop/model/auth/login_request.dart';
import 'package:shop/model/auth/register_request.dart';
import 'package:shop/model/auth/access_token.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST('/auth/register')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<AccessToken> register(@Body() RegisterRequest request);

  @POST('/auth/login')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<AccessToken> login(@Body() LoginRequest request);
}