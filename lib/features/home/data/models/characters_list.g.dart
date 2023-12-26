// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharactersList _$CharactersListFromJson(Map<String, dynamic> json) =>
    CharactersList(
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CharacterData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CharactersListToJson(CharactersList instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      lastVisiblePage: json['lastVisiblePage'] as int?,
      hasNextPage: json['hasNextPage'] as bool?,
      currentPage: json['currentPage'] as int?,
      items: json['items'] == null
          ? null
          : Items.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'lastVisiblePage': instance.lastVisiblePage,
      'hasNextPage': instance.hasNextPage,
      'currentPage': instance.currentPage,
      'items': instance.items,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      count: json['count'] as int?,
      total: json['total'] as int?,
      perPage: json['perPage'] as int?,
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'count': instance.count,
      'total': instance.total,
      'perPage': instance.perPage,
    };

CharacterData _$CharacterDataFromJson(Map<String, dynamic> json) =>
    CharacterData(
      mal_id: json['mal_id'] as int?,
      url: json['url'] as String?,
      images: json['images'] == null
          ? null
          : Images.fromJson(json['images'] as Map<String, dynamic>),
      name: json['name'] as String?,
      name_kanji: json['name_kanji'] as String?,
      nicknames: (json['nicknames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      favorites: json['favorites'] as int?,
      about: json['about'] as String?,
    );

Map<String, dynamic> _$CharacterDataToJson(CharacterData instance) =>
    <String, dynamic>{
      'mal_id': instance.mal_id,
      'url': instance.url,
      'images': instance.images,
      'name': instance.name,
      'name_kanji': instance.name_kanji,
      'nicknames': instance.nicknames,
      'favorites': instance.favorites,
      'about': instance.about,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      jpg: json['jpg'] == null
          ? null
          : Jpg.fromJson(json['jpg'] as Map<String, dynamic>),
      webp: json['webp'] == null
          ? null
          : Webp.fromJson(json['webp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'jpg': instance.jpg,
      'webp': instance.webp,
    };

Jpg _$JpgFromJson(Map<String, dynamic> json) => Jpg(
      image_url: json['image_url'] as String?,
    );

Map<String, dynamic> _$JpgToJson(Jpg instance) => <String, dynamic>{
      'image_url': instance.image_url,
    };

Webp _$WebpFromJson(Map<String, dynamic> json) => Webp(
      image_url: json['image_url'] as String?,
      small_image_url: json['small_image_url'] as String?,
    );

Map<String, dynamic> _$WebpToJson(Webp instance) => <String, dynamic>{
      'image_url': instance.image_url,
      'small_image_url': instance.small_image_url,
    };
