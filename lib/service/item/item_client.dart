import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shop/model/item/item.dart';
import 'package:shop/model/item/item_of_list.dart';
import 'package:shop/model/pagination/pagination.dart';

part 'item_client.g.dart';

@RestApi()
abstract class ItemClient {
  factory ItemClient(Dio dio, {String baseUrl}) = _ItemClient;

  @GET('/items/category/{id}')
  Future<Pagination<ItemOfList>> getItemsByCategoryId({
      @Path('id') required int id,
      @Query('page') int? page,
      @Query('size') int? size,
      @Query('sort') String? sort, // "price,desc"
  });

  @GET('/items/{id}')
  Future<Item> getItemByItemId(@Path('id') int id);
}
