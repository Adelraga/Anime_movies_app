import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';
@JsonSerializable()
class ApiErrorModel  {
  final int? code;
  final String? message;
  const ApiErrorModel({ this.code,  this.message});
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) => _$ApiErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
  
}