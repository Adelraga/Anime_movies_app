import 'package:json_annotation/json_annotation.dart';

part 'top_rated_movies.g.dart';

@JsonSerializable()
class TopAnime {
  Pagination? pagination;
  List<Data>? data;

  TopAnime({this.pagination, this.data});
  factory TopAnime.fromJson(Map<String, dynamic> json) =>
      _$TopAnimeFromJson(json);

  Map<String, dynamic> toJson() => _$TopAnimeToJson(this);
}

@JsonSerializable()
class Pagination {
  int? lastVisiblePage;
  bool? hasNextPage;
  int? currentPage;
  Items? items;

  Pagination(
      {this.lastVisiblePage, this.hasNextPage, this.currentPage, this.items});

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

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
class Data {
  int? mal_id;
  String? url;
  Images? images;
  Trailer? trailer;
  bool? approved;
  List<Titles>? titles;
  String? title;
  String? titleEnglish;
  String? titleJapanese;
  List<String>? titleSynonyms;
  String? type;
  String? source;
  int? episodes;
  String? status;
  bool? airing;
  Aired? aired;
  String? duration;
  String? rating;
  double? score;
  int? scoredBy;
  int? rank;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;
  String? background;
  String? season;
  int? year;
  Broadcast? broadcast;
  List<Producers>? producers;
  List<Studios>? studios;
  List<Genres>? genres;
  List<Demographics>? demographics;

  Data(
      {this.mal_id,
      this.url,
      this.images,
      this.trailer,
      this.approved,
      this.titles,
      this.title,
      this.titleEnglish,
      this.titleJapanese,
      this.titleSynonyms,
      this.type,
      this.source,
      this.episodes,
      this.status,
      this.airing,
      this.aired,
      this.duration,
      this.rating,
      this.score,
      this.scoredBy,
      this.rank,
      this.popularity,
      this.members,
      this.favorites,
      this.synopsis,
      this.background,
      this.season,
      this.year,
      this.broadcast,
      this.producers,
      this.studios,
      this.genres,


      this.demographics});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Images {
  Jpg? jpg;
  Jpg? webp;

  Images({this.jpg, this.webp});
  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}

@JsonSerializable()
class Jpg {
  String? image_url;
  String? small_image_url;
  String? large_image_url;

  Jpg({this.image_url, this.small_image_url, this.large_image_url});
  factory Jpg.fromJson(Map<String, dynamic> json) => _$JpgFromJson(json);

  Map<String, dynamic> toJson() => _$JpgToJson(this);
}

@JsonSerializable()
class Trailer {
  String? youtube_id;
  String? url;
  String? embedUrl;
  ImagesYoutube? images;

  Trailer({this.youtube_id, this.url, this.embedUrl, this.images});
  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);

  Map<String, dynamic> toJson() => _$TrailerToJson(this);
}

@JsonSerializable()
class ImagesYoutube {
  String? image_url;
  String? small_image_url;
  String? mediumimage_url;
  String? large_image_url;
  String? maximumimage_url;

  ImagesYoutube(
      {this.image_url,
      this.small_image_url,
      this.mediumimage_url,
      this.large_image_url,
      this.maximumimage_url});

  factory ImagesYoutube.fromJson(Map<String, dynamic> json) => _$ImagesYoutubeFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesYoutubeToJson(this);
}

@JsonSerializable()
class Titles {
  String? type;
  String? title;

  Titles({this.type, this.title});

  factory Titles.fromJson(Map<String, dynamic> json) => _$TitlesFromJson(json);

  Map<String, dynamic> toJson() => _$TitlesToJson(this);
}

@JsonSerializable()
class Aired {
  String? from;
  String? to;
  Prop? prop;
  String? string;

  Aired({this.from, this.to, this.prop, this.string});

  factory Aired.fromJson(Map<String, dynamic> json) => _$AiredFromJson(json);

  Map<String, dynamic> toJson() => _$AiredToJson(this);
}

@JsonSerializable()
class Prop {
  From? from;
  From? to;

  Prop({this.from, this.to});
  factory Prop.fromJson(Map<String, dynamic> json) => _$PropFromJson(json);

  Map<String, dynamic> toJson() => _$PropToJson(this);
}

@JsonSerializable()
class From {
  int? day;
  int? month;
  int? year;

  From({this.day, this.month, this.year});
  factory From.fromJson(Map<String, dynamic> json) => _$FromFromJson(json);

  Map<String, dynamic> toJson() => _$FromToJson(this);
}

@JsonSerializable()
class Broadcast {
  String? day;
  String? time;
  String? timezone;
  String? string;

  Broadcast({this.day, this.time, this.timezone, this.string});
  factory Broadcast.fromJson(Map<String, dynamic> json) =>
      _$BroadcastFromJson(json);

  Map<String, dynamic> toJson() => _$BroadcastToJson(this);
}

@JsonSerializable()
class Producers {
  int? mal_id;
  String? type;
  String? name;
  String? url;

  Producers({this.mal_id, this.type, this.name, this.url});
  factory Producers.fromJson(Map<String, dynamic> json) =>
      _$ProducersFromJson(json);

  Map<String, dynamic> toJson() => _$ProducersToJson(this);
}

@JsonSerializable()
class Studios {
  int? mal_id;
  String? type;
  String? name;
  String? url;

  Studios({this.mal_id, this.type, this.name, this.url});
  factory Studios.fromJson(Map<String, dynamic> json) =>
      _$StudiosFromJson(json);

  Map<String, dynamic> toJson() => _$StudiosToJson(this);
}

@JsonSerializable()
class Genres {
  int? mal_id;
  String? type;
  String? name;
  String? url;

  Genres({this.mal_id, this.type, this.name, this.url});
  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);

  Map<String, dynamic> toJson() => _$GenresToJson(this);
}

@JsonSerializable()
class Demographics {
  int? mal_id;
  String? type;
  String? name;
  String? url;

  Demographics({this.mal_id, this.type, this.name, this.url});
  factory Demographics.fromJson(Map<String, dynamic> json) =>
      _$DemographicsFromJson(json);

  Map<String, dynamic> toJson() => _$DemographicsToJson(this);
}
