// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterDetail _$CharacterDetailFromJson(Map<String, dynamic> json) =>
    CharacterDetail(
      data: json['data'] == null
          ? null
          : CharacterDataDetails.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterDetailToJson(CharacterDetail instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

CharacterDataDetails _$CharacterDataDetailsFromJson(
        Map<String, dynamic> json) =>
    CharacterDataDetails(
      mal_id: json['mal_id'] as int?,
      url: json['url'] as String?,
      images: json['images'] == null
          ? null
          : Images.fromJson(json['images'] as Map<String, dynamic>),
      name: json['name'] as String?,
      nameKanji: json['nameKanji'] as String?,
      nicknames: (json['nicknames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      favorites: json['favorites'] as int?,
      about: json['about'] as String?,
    );

Map<String, dynamic> _$CharacterDataDetailsToJson(
        CharacterDataDetails instance) =>
    <String, dynamic>{
      'mal_id': instance.mal_id,
      'url': instance.url,
      'images': instance.images,
      'name': instance.name,
      'nameKanji': instance.nameKanji,
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
