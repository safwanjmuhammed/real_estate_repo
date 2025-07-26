import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_model.freezed.dart';
part 'property_model.g.dart';

@freezed
class RealEstateResponse with _$RealEstateResponse {
  const factory RealEstateResponse({
    required String status,
    required List<Project> data,
  }) = _RealEstateResponse;

  factory RealEstateResponse.fromJson(Map<String, dynamic> json) =>
      _$RealEstateResponseFromJson(json);
}

@freezed
class Project with _$Project {
  const factory Project({
    required String project_name,
    required String location,
    required List<String> apartments,
    required String unit_size,
    required String price,
    required String status,
    required String developer,
    required List<String> highlights,
    required List<String> images,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}
