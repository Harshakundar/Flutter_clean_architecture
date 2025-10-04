import 'package:youtube_bloc_cleaning_coding/models/movies/movies.dart';

abstract class MoviesRepository {
  Future<MoviesModel> fetchMovieList();
}