// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationImpl<T> _$$PaginationImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginationImpl<T>(
      content: (json['content'] as List<dynamic>).map(fromJsonT).toList(),
      first: json['first'] as bool,
      last: json['last'] as bool,
      totalElements: json['totalElements'] as int,
      totalPages: json['totalPages'] as int,
      pageSize: json['size'] as int,
      pageNumber: json['number'] as int,
      numberOfElements: json['numberOfElements'] as int,
      empty: json['empty'] as bool,
      sort: SortInfo<dynamic>.fromJson(json['sort'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginationImplToJson<T>(
  _$PaginationImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'content': instance.content.map(toJsonT).toList(),
      'first': instance.first,
      'last': instance.last,
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'size': instance.pageSize,
      'number': instance.pageNumber,
      'numberOfElements': instance.numberOfElements,
      'empty': instance.empty,
      'sort': instance.sort,
    };
