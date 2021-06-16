import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:imdb_movie_search/models/movie_list_item.dart';
import 'package:imdb_movie_search/models/movie_search_result.dart';

class Api {
  final String url = 'https://imdb-api.com/en/API';
  final searchPath = '/SearchMovie';
  final moviePath = '/Title';
  final apiSecret = 'k_ayexp8vc';
  Future<List<MovieListItem>?> getData(String keyWord) async {
    final finalUrl = url + searchPath + '/' + apiSecret + '/' + keyWord;
    var uri = Uri.parse(finalUrl);

    var response = await http.get(uri);
    if (response.statusCode == 200) {
      final jsonResult = json.decode(response.body);
      final result = (jsonResult['results'] as List);
      List<MovieListItem> movieItems = [];
      print(result.toString());

      for (var e in result) {
        final i = MovieSearchResult.fromJson(e);
        final movieUrl = url + moviePath + '/' + apiSecret + '/' + i.id;
        var uri = Uri.parse(movieUrl);
        final movieResponse = await http.get(uri);
        if (movieResponse.statusCode == 200) {
          final jsonResult = json.decode(movieResponse.body);
          final res = MovieListItem.fromJson(jsonResult);
          movieItems.add(res);
          print(res);
        }
      }
      return movieItems;
    }
  }
}
