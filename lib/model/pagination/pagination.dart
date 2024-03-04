import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/model/pagination/sort_info.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@Freezed(fromJson: true, genericArgumentFactories: true)
class Pagination<T> with _$Pagination<T> {
  factory Pagination({
    required List<T> content,
    required bool first,
    required bool last,
    required int totalElements, //всего в базе элементов
    required int totalPages, // всего страниц существует с заданным размером
    @JsonKey(name: 'size') required int pageSize, // размер страницы
    @JsonKey(name: 'number') required int pageNumber, // текущий номер страницы
    required int numberOfElements, // элементов на текущей странице (<= pageSize)
    required bool empty,
    required SortInfo sort,
  }) = _Pagination;

  factory Pagination.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) converter,
  ) => _$PaginationFromJson(json, converter);
}
