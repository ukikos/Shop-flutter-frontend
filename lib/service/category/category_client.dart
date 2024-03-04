import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shop/model/category/category.dart';

part 'category_client.g.dart';

@RestApi()
abstract class CategoryClient {
  factory CategoryClient(Dio dio, {String baseUrl}) = _CategoryClient;
  
  @GET('/categories')
  Future<List<Category>> getRootCategories();

  @GET('/categories/{id}')
  Future<List<Category>> getCategoriesByParentId(@Path('id') int id);
}
