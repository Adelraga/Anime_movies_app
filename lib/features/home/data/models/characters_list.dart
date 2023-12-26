import 'package:json_annotation/json_annotation.dart';

part 'characters_list.g.dart';

@JsonSerializable()
class CharactersList {
  Pagination? pagination;
  List<CharacterData>? data;

  CharactersList({this.pagination, this.data});

    factory CharactersList.fromJson(Map<String, dynamic> json) => _$CharactersListFromJson(json);

  Map<String, dynamic> toJson() => _$CharactersListToJson(this);
}

@JsonSerializable()
class Pagination {
  int? lastVisiblePage;
  bool? hasNextPage;
  int? currentPage;
  Items? items;

  Pagination(
      {this.lastVisiblePage, this.hasNextPage, this.currentPage, this.items});
  factory Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}

@JsonSerializable()
class Items {
  int? count;
  int? total;
  int? perPage;

  Items({this.count, this.total, this.perPage});

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}

@JsonSerializable()
class CharacterData {
  int? mal_id;
  String? url;
  Images? images;
  String? name;
  String? name_kanji;
  List<String>? nicknames;
  int? favorites;
  String? about;

  CharacterData(
      {this.mal_id,
      this.url,
      this.images,
      this.name,
      this.name_kanji,
      this.nicknames,
      this.favorites,
      this.about});

  factory CharacterData.fromJson(Map<String, dynamic> json) => _$CharacterDataFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDataToJson(this);
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
