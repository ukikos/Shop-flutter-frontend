// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pagination<T> _$PaginationFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _Pagination<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$Pagination<T> {
  List<T> get content => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  int get totalElements =>
      throw _privateConstructorUsedError; //всего в базе элементов
  int get totalPages =>
      throw _privateConstructorUsedError; // всего страниц существует с заданным размером
  @JsonKey(name: 'size')
  int get pageSize => throw _privateConstructorUsedError; // размер страницы
  @JsonKey(name: 'number')
  int get pageNumber =>
      throw _privateConstructorUsedError; // текущий номер страницы
  int get numberOfElements =>
      throw _privateConstructorUsedError; // элементов на текущей странице (<= pageSize)
  bool get empty => throw _privateConstructorUsedError;
  SortInfo<dynamic> get sort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationCopyWith<T, Pagination<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<T, $Res> {
  factory $PaginationCopyWith(
          Pagination<T> value, $Res Function(Pagination<T>) then) =
      _$PaginationCopyWithImpl<T, $Res, Pagination<T>>;
  @useResult
  $Res call(
      {List<T> content,
      bool first,
      bool last,
      int totalElements,
      int totalPages,
      @JsonKey(name: 'size') int pageSize,
      @JsonKey(name: 'number') int pageNumber,
      int numberOfElements,
      bool empty,
      SortInfo<dynamic> sort});

  $SortInfoCopyWith<dynamic, $Res> get sort;
}

/// @nodoc
class _$PaginationCopyWithImpl<T, $Res, $Val extends Pagination<T>>
    implements $PaginationCopyWith<T, $Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? first = null,
    Object? last = null,
    Object? totalElements = null,
    Object? totalPages = null,
    Object? pageSize = null,
    Object? pageNumber = null,
    Object? numberOfElements = null,
    Object? empty = null,
    Object? sort = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortInfo<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SortInfoCopyWith<dynamic, $Res> get sort {
    return $SortInfoCopyWith<dynamic, $Res>(_value.sort, (value) {
      return _then(_value.copyWith(sort: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<T, $Res>
    implements $PaginationCopyWith<T, $Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl<T> value, $Res Function(_$PaginationImpl<T>) then) =
      __$$PaginationImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<T> content,
      bool first,
      bool last,
      int totalElements,
      int totalPages,
      @JsonKey(name: 'size') int pageSize,
      @JsonKey(name: 'number') int pageNumber,
      int numberOfElements,
      bool empty,
      SortInfo<dynamic> sort});

  @override
  $SortInfoCopyWith<dynamic, $Res> get sort;
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<T, $Res>
    extends _$PaginationCopyWithImpl<T, $Res, _$PaginationImpl<T>>
    implements _$$PaginationImplCopyWith<T, $Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl<T> _value, $Res Function(_$PaginationImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? first = null,
    Object? last = null,
    Object? totalElements = null,
    Object? totalPages = null,
    Object? pageSize = null,
    Object? pageNumber = null,
    Object? numberOfElements = null,
    Object? empty = null,
    Object? sort = null,
  }) {
    return _then(_$PaginationImpl<T>(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortInfo<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PaginationImpl<T> implements _Pagination<T> {
  _$PaginationImpl(
      {required final List<T> content,
      required this.first,
      required this.last,
      required this.totalElements,
      required this.totalPages,
      @JsonKey(name: 'size') required this.pageSize,
      @JsonKey(name: 'number') required this.pageNumber,
      required this.numberOfElements,
      required this.empty,
      required this.sort})
      : _content = content;

  factory _$PaginationImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PaginationImplFromJson(json, fromJsonT);

  final List<T> _content;
  @override
  List<T> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final bool first;
  @override
  final bool last;
  @override
  final int totalElements;
//всего в базе элементов
  @override
  final int totalPages;
// всего страниц существует с заданным размером
  @override
  @JsonKey(name: 'size')
  final int pageSize;
// размер страницы
  @override
  @JsonKey(name: 'number')
  final int pageNumber;
// текущий номер страницы
  @override
  final int numberOfElements;
// элементов на текущей странице (<= pageSize)
  @override
  final bool empty;
  @override
  final SortInfo<dynamic> sort;

  @override
  String toString() {
    return 'Pagination<$T>(content: $content, first: $first, last: $last, totalElements: $totalElements, totalPages: $totalPages, pageSize: $pageSize, pageNumber: $pageNumber, numberOfElements: $numberOfElements, empty: $empty, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl<T> &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.numberOfElements, numberOfElements) ||
                other.numberOfElements == numberOfElements) &&
            (identical(other.empty, empty) || other.empty == empty) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_content),
      first,
      last,
      totalElements,
      totalPages,
      pageSize,
      pageNumber,
      numberOfElements,
      empty,
      sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<T, _$PaginationImpl<T>> get copyWith =>
      __$$PaginationImplCopyWithImpl<T, _$PaginationImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PaginationImplToJson<T>(this, toJsonT);
  }
}

abstract class _Pagination<T> implements Pagination<T> {
  factory _Pagination(
      {required final List<T> content,
      required final bool first,
      required final bool last,
      required final int totalElements,
      required final int totalPages,
      @JsonKey(name: 'size') required final int pageSize,
      @JsonKey(name: 'number') required final int pageNumber,
      required final int numberOfElements,
      required final bool empty,
      required final SortInfo<dynamic> sort}) = _$PaginationImpl<T>;

  factory _Pagination.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PaginationImpl<T>.fromJson;

  @override
  List<T> get content;
  @override
  bool get first;
  @override
  bool get last;
  @override
  int get totalElements;
  @override //всего в базе элементов
  int get totalPages;
  @override // всего страниц существует с заданным размером
  @JsonKey(name: 'size')
  int get pageSize;
  @override // размер страницы
  @JsonKey(name: 'number')
  int get pageNumber;
  @override // текущий номер страницы
  int get numberOfElements;
  @override // элементов на текущей странице (<= pageSize)
  bool get empty;
  @override
  SortInfo<dynamic> get sort;
  @override
  @JsonKey(ignore: true)
  _$$PaginationImplCopyWith<T, _$PaginationImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
