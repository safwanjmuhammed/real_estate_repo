// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RealEstateResponseImpl _$$RealEstateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RealEstateResponseImpl(
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RealEstateResponseImplToJson(
        _$RealEstateResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      project_name: json['project_name'] as String,
      location: json['location'] as String,
      apartments: (json['apartments'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      unit_size: json['unit_size'] as String,
      price: json['price'] as String,
      status: json['status'] as String,
      developer: json['developer'] as String,
      highlights: (json['highlights'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'project_name': instance.project_name,
      'location': instance.location,
      'apartments': instance.apartments,
      'unit_size': instance.unit_size,
      'price': instance.price,
      'status': instance.status,
      'developer': instance.developer,
      'highlights': instance.highlights,
      'images': instance.images,
    };
