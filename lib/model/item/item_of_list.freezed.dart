// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_of_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemOfList _$ItemOfListFromJson(Map<String, dynamic> json) {
  return _ItemOfList.fromJson(json);
}

/// @nodoc
mixin _$ItemOfList {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String? get imageLink => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemOfListCopyWith<ItemOfList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemOfListCopyWith<$Res> {
  factory $ItemOfListCopyWith(
          ItemOfList value, $Res Function(ItemOfList) then) =
      _$ItemOfListCopyWithImpl<$Res, ItemOfList>;
  @useResult
  $Res call(
      {int id, String name, int price, String? imageLink, int categoryId});
}

/// @nodoc
class _$ItemOfListCopyWithImpl<$Res, $Val extends ItemOfList>
    implements $ItemOfListCopyWith<$Res> {
  _$ItemOfListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? imageLink = freezed,
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      imageLink: freezed == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemOfListImplCopyWith<$Res>
    implements $ItemOfListCopyWith<$Res> {
  factory _$$ItemOfListImplCopyWith(
          _$ItemOfListImpl value, $Res Function(_$ItemOfListImpl) then) =
      __$$ItemOfListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, int price, String? imageLink, int categoryId});
}

/// @nodoc
class __$$ItemOfListImplCopyWithImpl<$Res>
    extends _$ItemOfListCopyWithImpl<$Res, _$ItemOfListImpl>
    implements _$$ItemOfListImplCopyWith<$Res> {
  __$$ItemOfListImplCopyWithImpl(
      _$ItemOfListImpl _value, $Res Function(_$ItemOfListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? imageLink = freezed,
    Object? categoryId = null,
  }) {
    return _then(_$ItemOfListImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      imageLink: freezed == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemOfListImpl implements _ItemOfList {
  const _$ItemOfListImpl(
      {required this.id,
      required this.name,
      required this.price,
      required this.imageLink,
      required this.categoryId});

  factory _$ItemOfListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemOfListImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int price;
  @override
  final String? imageLink;
  @override
  final int categoryId;

  @override
  String toString() {
    return 'ItemOfList(id: $id, name: $name, price: $price, imageLink: $imageLink, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemOfListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageLink, imageLink) ||
                other.imageLink == imageLink) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, price, imageLink, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemOfListImplCopyWith<_$ItemOfListImpl> get copyWith =>
      __$$ItemOfListImplCopyWithImpl<_$ItemOfListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemOfListImplToJson(
      this,
    );
  }
}

abstract class _ItemOfList implements ItemOfList {
  const factory _ItemOfList(
      {required final int id,
      required final String name,
      required final int price,
      required final String? imageLink,
      required final int categoryId}) = _$ItemOfListImpl;

  factory _ItemOfList.fromJson(Map<String, dynamic> json) =
      _$ItemOfListImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get price;
  @override
  String? get imageLink;
  @override
  int get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$ItemOfListImplCopyWith<_$ItemOfListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
