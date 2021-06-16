// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieListItem _$_$_MovieListItemFromJson(Map<String, dynamic> json) {
  return _$_MovieListItem(
    id: json['id'] as String,
    fullTitle: json['fullTitle'] as String,
    title: json['title'] as String,
    image: json['image'] as String,
    genres: json['genres'] as String,
    imDbRating: json['imDbRating'] as String,
    metacriticRating: json['metacriticRating'] as String,
    errorMessage: json['errorMessage'] as String,
  );
}

Map<String, dynamic> _$_$_MovieListItemToJson(_$_MovieListItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullTitle': instance.fullTitle,
      'title': instance.title,
      'image': instance.image,
      'genres': instance.genres,
      'imDbRating': instance.imDbRating,
      'metacriticRating': instance.metacriticRating,
      'errorMessage': instance.errorMessage,
    };
