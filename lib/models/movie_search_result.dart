import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_search_result.freezed.dart';
part 'movie_search_result.g.dart';

@freezed
class MovieSearchResult with _$MovieSearchResult {
  const factory MovieSearchResult({
    required String id,
    required String title,
  }) = _MovieSearchResult;

  factory MovieSearchResult.fromJson(Map<String, dynamic> json) =>
      _$MovieSearchResultFromJson(json);
}
