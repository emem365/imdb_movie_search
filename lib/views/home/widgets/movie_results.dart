import 'package:flutter/material.dart';
import 'package:imdb_movie_search/controllers/home/home_controller.dart';
import 'package:imdb_movie_search/views/home/widgets/movie_list_tile.dart';
import 'package:provider/provider.dart';

class MovieResults extends StatelessWidget {
  const MovieResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeController>(context);
    if (provider.results == null)
      return Center(
        child: Text('No results found'),
      );
    else
      return ListView.builder(
        itemBuilder: (context, i) => MovieListTile(movie: provider.results![i]),
        itemCount: provider.results!.length,
      );
  }
}
