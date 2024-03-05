// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_of_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemOfListImpl _$$ItemOfListImplFromJson(Map<String, dynamic> json) =>
    _$ItemOfListImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      imageLink: json['imageLink'] as String?,
      categoryId: json['categoryId'] as int,
    );

Map<String, dynamic> _$$ItemOfListImplToJson(_$ItemOfListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'imageLink': instance.imageLink,
      'categoryId': instance.categoryId,
    };
