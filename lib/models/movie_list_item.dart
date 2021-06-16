import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_list_item.freezed.dart';
part 'movie_list_item.g.dart';

@freezed
class MovieListItem with _$MovieListItem {
  const factory MovieListItem({
    required String id,
    required String fullTitle,
    required String title,
    required String image,
    required String genres,
    required String imDbRating,
    required String metacriticRating,
    required String errorMessage,
  }) = _MovieListItem;
  factory MovieListItem.fromJson(Map<String, dynamic> json) =>
      _$MovieListItemFromJson(json);
}
