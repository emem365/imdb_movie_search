import 'package:flutter/material.dart';
import 'package:imdb_movie_search/api/api.dart';
import 'package:imdb_movie_search/models/movie_list_item.dart';

class HomeController with ChangeNotifier {
  bool? isLoading;
  List<MovieListItem>? results;
  String searchKeyword = '';

  Future<void> search() async {
    if (searchKeyword == '') return;
    isLoading = true;
    notifyListeners();
    final api = Api();
    results = await api.getData(searchKeyword);
    isLoading = false;
    notifyListeners();
  }

  void updateKeyword(String x) {
    searchKeyword = x;
  }
}
