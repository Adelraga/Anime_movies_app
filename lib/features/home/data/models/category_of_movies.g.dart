// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_of_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeCategory _$AnimeCategoryFromJson(Map<String, dynamic> json) =>
    AnimeCategory(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimeCategoryToJson(AnimeCategory instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      mal_id: json['mal_id'] as int?,
      name: json['name'] as String?,
      url: json['url'] as String?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'mal_id': instance.mal_id,
      'name': instance.name,
      'url': instance.url,
      'count': instance.count,
    };
