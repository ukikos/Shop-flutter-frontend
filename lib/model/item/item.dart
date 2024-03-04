import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/model/attribute/attribute.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  const factory Item({
    required int id,
    required String name,
    required int price,
    required String? imageLink,
    required int categoryId,
    required List<Attribute> attributes,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json)
  => _$ItemFromJson(json);
}