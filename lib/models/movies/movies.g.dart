// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoviesModel _$MoviesModelFromJson(Map<String, dynamic> json) => _MoviesModel(
  total: (json['total'] as num?)?.toInt() ?? 0,
  page: (json['page'] as num?)?.toInt() ?? 0,
  pages: (json['pages'] as num?)?.toInt() ?? 0,
  tvShow:
      (json['tv_shows'] as List<dynamic>?)
          ?.map((e) => TvShows.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$MoviesModelToJson(_MoviesModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'pages': instance.pages,
      'tv_shows': instance.tvShow,
    };

_TvShows _$TvShowsFromJson(Map<String, dynamic> json) => _TvShows(
  name: json['name'] as String? ?? '',
  permalink: json['permalink'] as String? ?? '',
  startDate: json['start_date'] as String? ?? '',
  endDate: json['end_date'] as String? ?? '',
  country: json['country'] as String? ?? '',
  network: json['network'] as String? ?? '',
  status: json['status'] as String? ?? '',
  imageThumbNailPath: json['image_thumbnail_path'] as String? ?? '',
);

Map<String, dynamic> _$TvShowsToJson(_TvShows instance) => <String, dynamic>{
  'name': instance.name,
  'permalink': instance.permalink,
  'start_date': instance.startDate,
  'end_date': instance.endDate,
  'country': instance.country,
  'network': instance.network,
  'status': instance.status,
  'image_thumbnail_path': instance.imageThumbNailPath,
};
