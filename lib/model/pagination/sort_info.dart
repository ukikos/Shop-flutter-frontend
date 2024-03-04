import 'package:freezed_annotation/freezed_annotation.dart';

part 'sort_info.freezed.dart';
part 'sort_info.g.dart';

@freezed
class SortInfo<T> with _$SortInfo<T> {
  factory SortInfo({
    required bool empty,
    required bool unsorted,
    required bool sorted,
  }) = _SortInfo;

  factory SortInfo.fromJson(Map<String, dynamic> json)
    => _$SortInfoFromJson(json);
}