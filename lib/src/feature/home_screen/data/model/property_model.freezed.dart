// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RealEstateResponse _$RealEstateResponseFromJson(Map<String, dynamic> json) {
  return _RealEstateResponse.fromJson(json);
}

/// @nodoc
mixin _$RealEstateResponse {
  String get status => throw _privateConstructorUsedError;
  List<Project> get data => throw _privateConstructorUsedError;

  /// Serializes this RealEstateResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RealEstateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RealEstateResponseCopyWith<RealEstateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealEstateResponseCopyWith<$Res> {
  factory $RealEstateResponseCopyWith(
          RealEstateResponse value, $Res Function(RealEstateResponse) then) =
      _$RealEstateResponseCopyWithImpl<$Res, RealEstateResponse>;
  @useResult
  $Res call({String status, List<Project> data});
}

/// @nodoc
class _$RealEstateResponseCopyWithImpl<$Res, $Val extends RealEstateResponse>
    implements $RealEstateResponseCopyWith<$Res> {
  _$RealEstateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RealEstateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RealEstateResponseImplCopyWith<$Res>
    implements $RealEstateResponseCopyWith<$Res> {
  factory _$$RealEstateResponseImplCopyWith(_$RealEstateResponseImpl value,
          $Res Function(_$RealEstateResponseImpl) then) =
      __$$RealEstateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, List<Project> data});
}

/// @nodoc
class __$$RealEstateResponseImplCopyWithImpl<$Res>
    extends _$RealEstateResponseCopyWithImpl<$Res, _$RealEstateResponseImpl>
    implements _$$RealEstateResponseImplCopyWith<$Res> {
  __$$RealEstateResponseImplCopyWithImpl(_$RealEstateResponseImpl _value,
      $Res Function(_$RealEstateResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealEstateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$RealEstateResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RealEstateResponseImpl implements _RealEstateResponse {
  const _$RealEstateResponseImpl(
      {required this.status, required final List<Project> data})
      : _data = data;

  factory _$RealEstateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RealEstateResponseImplFromJson(json);

  @override
  final String status;
  final List<Project> _data;
  @override
  List<Project> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'RealEstateResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealEstateResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data));

  /// Create a copy of RealEstateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RealEstateResponseImplCopyWith<_$RealEstateResponseImpl> get copyWith =>
      __$$RealEstateResponseImplCopyWithImpl<_$RealEstateResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RealEstateResponseImplToJson(
      this,
    );
  }
}

abstract class _RealEstateResponse implements RealEstateResponse {
  const factory _RealEstateResponse(
      {required final String status,
      required final List<Project> data}) = _$RealEstateResponseImpl;

  factory _RealEstateResponse.fromJson(Map<String, dynamic> json) =
      _$RealEstateResponseImpl.fromJson;

  @override
  String get status;
  @override
  List<Project> get data;

  /// Create a copy of RealEstateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RealEstateResponseImplCopyWith<_$RealEstateResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  String get project_name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  List<String> get apartments => throw _privateConstructorUsedError;
  String get unit_size => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get developer => throw _privateConstructorUsedError;
  List<String> get highlights => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;

  /// Serializes this Project to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {String project_name,
      String location,
      List<String> apartments,
      String unit_size,
      String price,
      String status,
      String developer,
      List<String> highlights,
      List<String> images});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project_name = null,
    Object? location = null,
    Object? apartments = null,
    Object? unit_size = null,
    Object? price = null,
    Object? status = null,
    Object? developer = null,
    Object? highlights = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      project_name: null == project_name
          ? _value.project_name
          : project_name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      apartments: null == apartments
          ? _value.apartments
          : apartments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unit_size: null == unit_size
          ? _value.unit_size
          : unit_size // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      developer: null == developer
          ? _value.developer
          : developer // ignore: cast_nullable_to_non_nullable
              as String,
      highlights: null == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
          _$ProjectImpl value, $Res Function(_$ProjectImpl) then) =
      __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String project_name,
      String location,
      List<String> apartments,
      String unit_size,
      String price,
      String status,
      String developer,
      List<String> highlights,
      List<String> images});
}

/// @nodoc
class __$$ProjectImplCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$ProjectImpl>
    implements _$$ProjectImplCopyWith<$Res> {
  __$$ProjectImplCopyWithImpl(
      _$ProjectImpl _value, $Res Function(_$ProjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project_name = null,
    Object? location = null,
    Object? apartments = null,
    Object? unit_size = null,
    Object? price = null,
    Object? status = null,
    Object? developer = null,
    Object? highlights = null,
    Object? images = null,
  }) {
    return _then(_$ProjectImpl(
      project_name: null == project_name
          ? _value.project_name
          : project_name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      apartments: null == apartments
          ? _value._apartments
          : apartments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unit_size: null == unit_size
          ? _value.unit_size
          : unit_size // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      developer: null == developer
          ? _value.developer
          : developer // ignore: cast_nullable_to_non_nullable
              as String,
      highlights: null == highlights
          ? _value._highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl implements _Project {
  const _$ProjectImpl(
      {required this.project_name,
      required this.location,
      required final List<String> apartments,
      required this.unit_size,
      required this.price,
      required this.status,
      required this.developer,
      required final List<String> highlights,
      required final List<String> images})
      : _apartments = apartments,
        _highlights = highlights,
        _images = images;

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  final String project_name;
  @override
  final String location;
  final List<String> _apartments;
  @override
  List<String> get apartments {
    if (_apartments is EqualUnmodifiableListView) return _apartments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apartments);
  }

  @override
  final String unit_size;
  @override
  final String price;
  @override
  final String status;
  @override
  final String developer;
  final List<String> _highlights;
  @override
  List<String> get highlights {
    if (_highlights is EqualUnmodifiableListView) return _highlights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_highlights);
  }

  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'Project(project_name: $project_name, location: $location, apartments: $apartments, unit_size: $unit_size, price: $price, status: $status, developer: $developer, highlights: $highlights, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.project_name, project_name) ||
                other.project_name == project_name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._apartments, _apartments) &&
            (identical(other.unit_size, unit_size) ||
                other.unit_size == unit_size) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.developer, developer) ||
                other.developer == developer) &&
            const DeepCollectionEquality()
                .equals(other._highlights, _highlights) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      project_name,
      location,
      const DeepCollectionEquality().hash(_apartments),
      unit_size,
      price,
      status,
      developer,
      const DeepCollectionEquality().hash(_highlights),
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      __$$ProjectImplCopyWithImpl<_$ProjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImplToJson(
      this,
    );
  }
}

abstract class _Project implements Project {
  const factory _Project(
      {required final String project_name,
      required final String location,
      required final List<String> apartments,
      required final String unit_size,
      required final String price,
      required final String status,
      required final String developer,
      required final List<String> highlights,
      required final List<String> images}) = _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  String get project_name;
  @override
  String get location;
  @override
  List<String> get apartments;
  @override
  String get unit_size;
  @override
  String get price;
  @override
  String get status;
  @override
  String get developer;
  @override
  List<String> get highlights;
  @override
  List<String> get images;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
