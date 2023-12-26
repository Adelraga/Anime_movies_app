import 'package:json_annotation/json_annotation.dart';

part 'character_detail.g.dart';

@JsonSerializable()
class CharacterDetail {
  CharacterDataDetails? data;

  CharacterDetail({this.data});
    factory CharacterDetail.fromJson(Map<String, dynamic> json) => _$CharacterDetailFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDetailToJson(this);
 
}
@JsonSerializable()
class CharacterDataDetails {
  int? mal_id;
  String? url;
  Images? images;
  String? name;
  String? nameKanji;
  List<String>? nicknames;
  int? favorites;
  String? about;

  CharacterDataDetails(
      {this.mal_id,
      this.url,
      this.images,
      this.name,
      this.nameKanji,
      this.nicknames,
      this.favorites,
      this.about});

  factory CharacterDataDetails.fromJson(Map<String, dynamic> json) => _$CharacterDataDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDataDetailsToJson(this);
}

@JsonSerializable()
class Images {
  Jpg? jpg;
  Webp? webp;

  Images({this.jpg, this.webp});

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}

@JsonSerializable()
class Jpg {
  String? image_url;

  Jpg({this.image_url});

  factory Jpg.fromJson(Map<String, dynamic> json) => _$JpgFromJson(json);

  Map<String, dynamic> toJson() => _$JpgToJson(this);
}

@JsonSerializable()
class Webp {
  String? image_url;
  String? small_image_url;

  Webp({this.image_url, this.small_image_url});

  factory Webp.fromJson(Map<String, dynamic> json) => _$WebpFromJson(json);

  Map<String, dynamic> toJson() => _$WebpToJson(this);
}
