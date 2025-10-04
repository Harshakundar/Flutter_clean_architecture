import 'package:youtube_bloc_cleaning_coding/config/app_url.dart';
import 'package:youtube_bloc_cleaning_coding/data/network/network_services_api.dart';
import 'package:youtube_bloc_cleaning_coding/models/movies/movies.dart';
import 'package:youtube_bloc_cleaning_coding/repository/movies/movies_repository.dart';

class MoviesHttpApiRepository implements MoviesRepository{
  
    final _apiServices = NetworkServicesApi();

  @override
  Future<MoviesModel> fetchMovieList() async{
    // TODO: implement fetchMovieList\
    final response=await _apiServices.getApi(AppUrl.popularMovieListEndPoint);
    return MoviesModel.fromJson(response);
  }

}