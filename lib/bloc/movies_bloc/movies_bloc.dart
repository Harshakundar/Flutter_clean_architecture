import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_bloc_cleaning_coding/data/response/api_response.dart';
import 'package:equatable/equatable.dart';
import 'package:youtube_bloc_cleaning_coding/models/movies/movies.dart';
import 'package:youtube_bloc_cleaning_coding/repository/movies/movies_repository.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent,MoviesState>{
  MoviesRepository moviesRepository;
  MoviesBloc({required this.moviesRepository}):super(MoviesState(moviesList: ApiResponse.loading())){
      on<MoviesFetched>(fetchMoviesListApi);
  }

  Future<void> fetchMoviesListApi(MoviesFetched event, Emitter<MoviesState> emit)async{
    await moviesRepository.fetchMovieList().then((value){
      print({"Value":value});
        emit(state.copyWith(moviesList: ApiResponse.completed(value)));
    }).onError((error,stackTrace){
      print({"Error":error});
       emit(state.copyWith(moviesList: ApiResponse.error(error.toString())));
    });
  }
}