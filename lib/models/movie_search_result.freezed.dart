// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieSearchResult _$MovieSearchResultFromJson(Map<String, dynamic> json) {
  return _MovieSearchResult.fromJson(json);
}

/// @nodoc
class _$MovieSearchResultTearOff {
  const _$MovieSearchResultTearOff();

  _MovieSearchResult call({required String id, required String title}) {
    return _MovieSearchResult(
      id: id,
      title: title,
    );
  }

  MovieSearchResult fromJson(Map<String, Object> json) {
    return MovieSearchResult.fromJson(json);
  }
}

/// @nodoc
const $MovieSearchResult = _$MovieSearchResultTearOff();

/// @nodoc
mixin _$MovieSearchResult {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieSearchResultCopyWith<MovieSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieSearchResultCopyWith<$Res> {
  factory $MovieSearchResultCopyWith(
          MovieSearchResult value, $Res Function(MovieSearchResult) then) =
      _$MovieSearchResultCopyWithImpl<$Res>;
  $Res call({String id, String title});
}

/// @nodoc
class _$MovieSearchResultCopyWithImpl<$Res>
    implements $MovieSearchResultCopyWith<$Res> {
  _$MovieSearchResultCopyWithImpl(this._value, this._then);

  final MovieSearchResult _value;
  // ignore: unused_field
  final $Res Function(MovieSearchResult) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieSearchResultCopyWith<$Res>
    implements $MovieSearchResultCopyWith<$Res> {
  factory _$MovieSearchResultCopyWith(
          _MovieSearchResult value, $Res Function(_MovieSearchResult) then) =
      __$MovieSearchResultCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title});
}

/// @nodoc
class __$MovieSearchResultCopyWithImpl<$Res>
    extends _$MovieSearchResultCopyWithImpl<$Res>
    implements _$MovieSearchResultCopyWith<$Res> {
  __$MovieSearchResultCopyWithImpl(
      _MovieSearchResult _value, $Res Function(_MovieSearchResult) _then)
      : super(_value, (v) => _then(v as _MovieSearchResult));

  @override
  _MovieSearchResult get _value => super._value as _MovieSearchResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_MovieSearchResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieSearchResult implements _MovieSearchResult {
  const _$_MovieSearchResult({required this.id, required this.title});

  factory _$_MovieSearchResult.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieSearchResultFromJson(json);

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'MovieSearchResult(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieSearchResult &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$MovieSearchResultCopyWith<_MovieSearchResult> get copyWith =>
      __$MovieSearchResultCopyWithImpl<_MovieSearchResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieSearchResultToJson(this);
  }
}

abstract class _MovieSearchResult implements MovieSearchResult {
  const factory _MovieSearchResult(
      {required String id, required String title}) = _$_MovieSearchResult;

  factory _MovieSearchResult.fromJson(Map<String, dynamic> json) =
      _$_MovieSearchResult.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieSearchResultCopyWith<_MovieSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}
