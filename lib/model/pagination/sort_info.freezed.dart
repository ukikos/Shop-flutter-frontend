// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sort_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SortInfo<T> _$SortInfoFromJson<T>(Map<String, dynamic> json) {
  return _SortInfo<T>.fromJson(json);
}

/// @nodoc
mixin _$SortInfo<T> {
  bool get empty => throw _privateConstructorUsedError;
  bool get unsorted => throw _privateConstructorUsedError;
  bool get sorted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SortInfoCopyWith<T, SortInfo<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortInfoCopyWith<T, $Res> {
  factory $SortInfoCopyWith(
          SortInfo<T> value, $Res Function(SortInfo<T>) then) =
      _$SortInfoCopyWithImpl<T, $Res, SortInfo<T>>;
  @useResult
  $Res call({bool empty, bool unsorted, bool sorted});
}

/// @nodoc
class _$SortInfoCopyWithImpl<T, $Res, $Val extends SortInfo<T>>
    implements $SortInfoCopyWith<T, $Res> {
  _$SortInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empty = null,
    Object? unsorted = null,
    Object? sorted = null,
  }) {
    return _then(_value.copyWith(
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SortInfoImplCopyWith<T, $Res>
    implements $SortInfoCopyWith<T, $Res> {
  factory _$$SortInfoImplCopyWith(
          _$SortInfoImpl<T> value, $Res Function(_$SortInfoImpl<T>) then) =
      __$$SortInfoImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool empty, bool unsorted, bool sorted});
}

/// @nodoc
class __$$SortInfoImplCopyWithImpl<T, $Res>
    extends _$SortInfoCopyWithImpl<T, $Res, _$SortInfoImpl<T>>
    implements _$$SortInfoImplCopyWith<T, $Res> {
  __$$SortInfoImplCopyWithImpl(
      _$SortInfoImpl<T> _value, $Res Function(_$SortInfoImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empty = null,
    Object? unsorted = null,
    Object? sorted = null,
  }) {
    return _then(_$SortInfoImpl<T>(
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SortInfoImpl<T> implements _SortInfo<T> {
  _$SortInfoImpl(
      {required this.empty, required this.unsorted, required this.sorted});

  factory _$SortInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SortInfoImplFromJson(json);

  @override
  final bool empty;
  @override
  final bool unsorted;
  @override
  final bool sorted;

  @override
  String toString() {
    return 'SortInfo<$T>(empty: $empty, unsorted: $unsorted, sorted: $sorted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortInfoImpl<T> &&
            (identical(other.empty, empty) || other.empty == empty) &&
            (identical(other.unsorted, unsorted) ||
                other.unsorted == unsorted) &&
            (identical(other.sorted, sorted) || other.sorted == sorted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, empty, unsorted, sorted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortInfoImplCopyWith<T, _$SortInfoImpl<T>> get copyWith =>
      __$$SortInfoImplCopyWithImpl<T, _$SortInfoImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SortInfoImplToJson<T>(
      this,
    );
  }
}

abstract class _SortInfo<T> implements SortInfo<T> {
  factory _SortInfo(
      {required final bool empty,
      required final bool unsorted,
      required final bool sorted}) = _$SortInfoImpl<T>;

  factory _SortInfo.fromJson(Map<String, dynamic> json) =
      _$SortInfoImpl<T>.fromJson;

  @override
  bool get empty;
  @override
  bool get unsorted;
  @override
  bool get sorted;
  @override
  @JsonKey(ignore: true)
  _$$SortInfoImplCopyWith<T, _$SortInfoImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
