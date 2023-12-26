// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rated_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopAnime _$TopAnimeFromJson(Map<String, dynamic> json) => TopAnime(
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopAnimeToJson(TopAnime instance) => <String, dynamic>{
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

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      mal_id: json['mal_id'] as int?,
      url: json['url'] as String?,
      images: json['images'] == null
          ? null
          : Images.fromJson(json['images'] as Map<String, dynamic>),
      trailer: json['trailer'] == null
          ? null
          : Trailer.fromJson(json['trailer'] as Map<String, dynamic>),
      approved: json['approved'] as bool?,
      titles: (json['titles'] as List<dynamic>?)
          ?.map((e) => Titles.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      titleEnglish: json['titleEnglish'] as String?,
      titleJapanese: json['titleJapanese'] as String?,
      titleSynonyms: (json['titleSynonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      type: json['type'] as String?,
      source: json['source'] as String?,
      episodes: json['episodes'] as int?,
      status: json['status'] as String?,
      airing: json['airing'] as bool?,
      aired: json['aired'] == null
          ? null
          : Aired.fromJson(json['aired'] as Map<String, dynamic>),
      duration: json['duration'] as String?,
      rating: json['rating'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      scoredBy: json['scoredBy'] as int?,
      rank: json['rank'] as int?,
      popularity: json['popularity'] as int?,
      members: json['members'] as int?,
      favorites: json['favorites'] as int?,
      synopsis: json['synopsis'] as String?,
      background: json['background'] as String?,
      season: json['season'] as String?,
      year: json['year'] as int?,
      broadcast: json['broadcast'] == null
          ? null
          : Broadcast.fromJson(json['broadcast'] as Map<String, dynamic>),
      producers: (json['producers'] as List<dynamic>?)
          ?.map((e) => Producers.fromJson(e as Map<String, dynamic>))
          .toList(),
      studios: (json['studios'] as List<dynamic>?)
          ?.map((e) => Studios.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => Genres.fromJson(e as Map<String, dynamic>))
          .toList(),
      demographics: (json['demographics'] as List<dynamic>?)
          ?.map((e) => Demographics.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'mal_id': instance.mal_id,
      'url': instance.url,
      'images': instance.images,
      'trailer': instance.trailer,
      'approved': instance.approved,
      'titles': instance.titles,
      'title': instance.title,
      'titleEnglish': instance.titleEnglish,
      'titleJapanese': instance.titleJapanese,
      'titleSynonyms': instance.titleSynonyms,
      'type': instance.type,
      'source': instance.source,
      'episodes': instance.episodes,
      'status': instance.status,
      'airing': instance.airing,
      'aired': instance.aired,
      'duration': instance.duration,
      'rating': instance.rating,
      'score': instance.score,
      'scoredBy': instance.scoredBy,
      'rank': instance.rank,
      'popularity': instance.popularity,
      'members': instance.members,
      'favorites': instance.favorites,
      'synopsis': instance.synopsis,
      'background': instance.background,
      'season': instance.season,
      'year': instance.year,
      'broadcast': instance.broadcast,
      'producers': instance.producers,
      'studios': instance.studios,
      'genres': instance.genres,
      'demographics': instance.demographics,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      jpg: json['jpg'] == null
          ? null
          : Jpg.fromJson(json['jpg'] as Map<String, dynamic>),
      webp: json['webp'] == null
          ? null
          : Jpg.fromJson(json['webp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'jpg': instance.jpg,
      'webp': instance.webp,
    };

Jpg _$JpgFromJson(Map<String, dynamic> json) => Jpg(
      image_url: json['image_url'] as String?,
      small_image_url: json['small_image_url'] as String?,
      large_image_url: json['large_image_url'] as String?,
    );

Map<String, dynamic> _$JpgToJson(Jpg instance) => <String, dynamic>{
      'image_url': instance.image_url,
      'small_image_url': instance.small_image_url,
      'large_image_url': instance.large_image_url,
    };

Trailer _$TrailerFromJson(Map<String, dynamic> json) => Trailer(
      youtube_id: json['youtube_id'] as String?,
      url: json['url'] as String?,
      embedUrl: json['embedUrl'] as String?,
      images: json['images'] == null
          ? null
          : ImagesYoutube.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TrailerToJson(Trailer instance) => <String, dynamic>{
      'youtube_id': instance.youtube_id,
      'url': instance.url,
      'embedUrl': instance.embedUrl,
      'images': instance.images,
    };

ImagesYoutube _$ImagesYoutubeFromJson(Map<String, dynamic> json) =>
    ImagesYoutube(
      image_url: json['image_url'] as String?,
      small_image_url: json['small_image_url'] as String?,
      mediumimage_url: json['mediumimage_url'] as String?,
      large_image_url: json['large_image_url'] as String?,
      maximumimage_url: json['maximumimage_url'] as String?,
    );

Map<String, dynamic> _$ImagesYoutubeToJson(ImagesYoutube instance) =>
    <String, dynamic>{
      'image_url': instance.image_url,
      'small_image_url': instance.small_image_url,
      'mediumimage_url': instance.mediumimage_url,
      'large_image_url': instance.large_image_url,
      'maximumimage_url': instance.maximumimage_url,
    };

Titles _$TitlesFromJson(Map<String, dynamic> json) => Titles(
      type: json['type'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$TitlesToJson(Titles instance) => <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
    };

Aired _$AiredFromJson(Map<String, dynamic> json) => Aired(
      from: json['from'] as String?,
      to: json['to'] as String?,
      prop: json['prop'] == null
          ? null
          : Prop.fromJson(json['prop'] as Map<String, dynamic>),
      string: json['string'] as String?,
    );

Map<String, dynamic> _$AiredToJson(Aired instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'prop': instance.prop,
      'string': instance.string,
    };

Prop _$PropFromJson(Map<String, dynamic> json) => Prop(
      from: json['from'] == null
          ? null
          : From.fromJson(json['from'] as Map<String, dynamic>),
      to: json['to'] == null
          ? null
          : From.fromJson(json['to'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PropToJson(Prop instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
    };

From _$FromFromJson(Map<String, dynamic> json) => From(
      day: json['day'] as int?,
      month: json['month'] as int?,
      year: json['year'] as int?,
    );

Map<String, dynamic> _$FromToJson(From instance) => <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
    };

Broadcast _$BroadcastFromJson(Map<String, dynamic> json) => Broadcast(
      day: json['day'] as String?,
      time: json['time'] as String?,
      timezone: json['timezone'] as String?,
      string: json['string'] as String?,
    );

Map<String, dynamic> _$BroadcastToJson(Broadcast instance) => <String, dynamic>{
      'day': instance.day,
      'time': instance.time,
      'timezone': instance.timezone,
      'string': instance.string,
    };

Producers _$ProducersFromJson(Map<String, dynamic> json) => Producers(
      mal_id: json['mal_id'] as int?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ProducersToJson(Producers instance) => <String, dynamic>{
      'mal_id': instance.mal_id,
      'type': instance.type,
      'name': instance.name,
      'url': instance.url,
    };

Studios _$StudiosFromJson(Map<String, dynamic> json) => Studios(
      mal_id: json['mal_id'] as int?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$StudiosToJson(Studios instance) => <String, dynamic>{
      'mal_id': instance.mal_id,
      'type': instance.type,
      'name': instance.name,
      'url': instance.url,
    };

Genres _$GenresFromJson(Map<String, dynamic> json) => Genres(
      mal_id: json['mal_id'] as int?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$GenresToJson(Genres instance) => <String, dynamic>{
      'mal_id': instance.mal_id,
      'type': instance.type,
      'name': instance.name,
      'url': instance.url,
    };

Demographics _$DemographicsFromJson(Map<String, dynamic> json) => Demographics(
      mal_id: json['mal_id'] as int?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$DemographicsToJson(Demographics instance) =>
    <String, dynamic>{
      'mal_id': instance.mal_id,
      'type': instance.type,
      'name': instance.name,
      'url': instance.url,
    };
