//  import 'package:freezed_annotation/freezed_annotation.dart';
// part 'movies.freezed.dart';
// part 'movies.g.dart';
// @freezed
//  class MoviesModel with _$MoviesModel {
//   factory MoviesModel({
//     @Default(0) int total,
//     @Default(0) int page,
//     @Default(0) int pages,
//     @Default([]) @JsonKey(name:'tv_shows') List<TvShows> tvShow
//   })=_MoviesModel;

//   factory MoviesModel.fromJson(Map<String,dynamic> json)=> _$MoviesModelFromJson(json);
 
//  }


//  @freezed
//  class TvShows with _$TvShows {
//   factory TvShows({
//    @JsonKey(name:'name')@Default('') String name,
//    @JsonKey(name:'permalink')@Default('') String permalink,
//    @JsonKey(name:'start_date')@Default('') String startDate,
//    @JsonKey(name:'end_date')@Default('') String endDate,
//    @JsonKey(name:'country')@Default('') String country,
//    @JsonKey(name:'network')@Default('') String network,
//    @JsonKey(name:'status')@Default('') String status,
//    @JsonKey(name:'image_thumbnail_path')@Default('') String imageThumbNailPath
//   })=_TvShows;

//   factory TvShows.fromJson(Map<String,dynamic> json)=> _$TvShowsFromJson(json);
 
//  }


// movies.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies.freezed.dart';
part 'movies.g.dart';

@freezed
class MoviesModel with _$MoviesModel {
  const factory MoviesModel({
    @Default(0) int total,
    @Default(0) int page,
    @Default(0) int pages,
    @Default([]) @JsonKey(name: 'tv_shows') List<TvShows> tvShow,
  }) = _MoviesModel;

  factory MoviesModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesModelFromJson(json);
      
        @override
        // TODO: implement page
        int get page => throw UnimplementedError();
      
        @override
        // TODO: implement pages
        int get pages => throw UnimplementedError();
      
        @override
        Map<String, dynamic> toJson() {
          // TODO: implement toJson
          throw UnimplementedError();
        }
      
        @override
        // TODO: implement total
        int get total => throw UnimplementedError();
      
        @override
        // TODO: implement tvShow
        List<TvShows> get tvShow => throw UnimplementedError();
}

@freezed
class TvShows with _$TvShows {
  const factory TvShows({
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'permalink') @Default('') String permalink,
    @JsonKey(name: 'start_date') @Default('') String startDate,
    @JsonKey(name: 'end_date') @Default('') String endDate,
    @JsonKey(name: 'country') @Default('') String country,
    @JsonKey(name: 'network') @Default('') String network,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(name: 'image_thumbnail_path') @Default('') String imageThumbNailPath,
  }) = _TvShows;

  factory TvShows.fromJson(Map<String, dynamic> json) =>
      _$TvShowsFromJson(json);
      
        @override
        // TODO: implement country
        String get country => throw UnimplementedError();
      
        @override
        // TODO: implement endDate
        String get endDate => throw UnimplementedError();
      
        @override
        // TODO: implement imageThumbNailPath
        String get imageThumbNailPath => throw UnimplementedError();
      
        @override
        // TODO: implement name
        String get name => throw UnimplementedError();
      
        @override
        // TODO: implement network
        String get network => throw UnimplementedError();
      
        @override
        // TODO: implement permalink
        String get permalink => throw UnimplementedError();
      
        @override
        // TODO: implement startDate
        String get startDate => throw UnimplementedError();
      
        @override
        // TODO: implement status
        String get status => throw UnimplementedError();
      
        @override
        Map<String, dynamic> toJson() {
          // TODO: implement toJson
          throw UnimplementedError();
        }
}
