import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:imdb_movie_search/models/movie_list_item.dart';

class MovieListTile extends StatelessWidget {
  final MovieListItem movie;
  const MovieListTile({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsets.all(8),
        height: 175,
        child: Row(
          children: [
            SizedBox(
              width: 108,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: movie.image,
                  placeholder: (_, __) => Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: Theme.of(context).textTheme.headline6,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    movie.genres,
                    style: Theme.of(context).textTheme.caption,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Wrap(
                    children: [
                      if (movie.imDbRating != '')
                        Chip(
                            backgroundColor:
                                (double.parse(movie.imDbRating) >= 7.5)
                                    ? Colors.green
                                    : Colors.blue,
                            labelStyle: Theme.of(context)
                                .textTheme
                                .overline
                                ?.copyWith(color: Colors.white),
                            label: Text(
                              '${movie.imDbRating} IMDB',
                            )),
                      const SizedBox(width: 4),
                      if (movie.metacriticRating != '')
                        Chip(
                            backgroundColor:
                                (double.parse(movie.metacriticRating) >= 75)
                                    ? Colors.yellow
                                    : Colors.red,
                            labelStyle: Theme.of(context)
                                .textTheme
                                .overline
                                ?.copyWith(
                                    color:
                                        (double.parse(movie.metacriticRating) >=
                                                75)
                                            ? Colors.black
                                            : Colors.white),
                            label: Text(
                              '${movie.metacriticRating} Metacritic',
                            )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
