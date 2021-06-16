import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imdb_movie_search/controllers/home/home_controller.dart';
import 'package:imdb_movie_search/views/home/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMDB Searcher',
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      home: ChangeNotifierProvider(
          create: (context) => HomeController(), child: Home()),
    );
  }
}
