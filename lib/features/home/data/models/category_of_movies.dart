import 'package:json_annotation/json_annotation.dart';

part 'category_of_movies.g.dart';

@JsonSerializable()
class AnimeCategory {
  List<Data>? data;

  AnimeCategory({this.data});
    factory AnimeCategory.fromJson(Map<String, dynamic> json) => _$AnimeCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeCategoryToJson(this);
}



@JsonSerializable()
class Data {
  int? mal_id;
  String? name;
  String? url;
  int? count;

  Data({this.mal_id, this.name, this.url, this.count});
    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}


