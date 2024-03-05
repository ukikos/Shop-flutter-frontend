import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_of_list.freezed.dart';
part 'item_of_list.g.dart';

@freezed
class ItemOfList with _$ItemOfList {
  const factory ItemOfList({
    required int id,
    required String name,
    required int price,
    required String? imageLink,
    required int categoryId,
  }) = _ItemOfList;

  factory ItemOfList.fromJson(Map<String, dynamic> json)
  => _$ItemOfListFromJson(json);
}