import 'package:flutter/material.dart';
import 'package:imdb_movie_search/controllers/home/home_controller.dart';
import 'package:imdb_movie_search/views/home/widgets/movie_results.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeController>(context);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 48,
          ),
          Text(
            'Home',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          TextField(
            onChanged: provider.updateKeyword,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Search for movies',
              suffixIcon: InkWell(
                onTap: () {
                  provider.search();
                },
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: (provider.isLoading == null)
                ? Center(
                    child: Text('Search for a movie!'),
                  )
                : (provider.isLoading!)
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : MovieResults(),
          ),
        ],
      ),
    ));
  }
}
