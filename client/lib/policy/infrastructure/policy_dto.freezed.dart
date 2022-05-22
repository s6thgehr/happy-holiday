// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'policy_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PolicyDTO {
  int get startDate => throw _privateConstructorUsedError;
  int get endDate => throw _privateConstructorUsedError;
  int get insuredValue => throw _privateConstructorUsedError;
  int get premium => throw _privateConstructorUsedError;
  int get incidents => throw _privateConstructorUsedError;
  int get incidentsTreshold => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PolicyDTOCopyWith<PolicyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyDTOCopyWith<$Res> {
  factory $PolicyDTOCopyWith(PolicyDTO value, $Res Function(PolicyDTO) then) =
      _$PolicyDTOCopyWithImpl<$Res>;
  $Res call(
      {int startDate,
      int endDate,
      int insuredValue,
      int premium,
      int incidents,
      int incidentsTreshold});
}

/// @nodoc
class _$PolicyDTOCopyWithImpl<$Res> implements $PolicyDTOCopyWith<$Res> {
  _$PolicyDTOCopyWithImpl(this._value, this._then);

  final PolicyDTO _value;
  // ignore: unused_field
  final $Res Function(PolicyDTO) _then;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? insuredValue = freezed,
    Object? premium = freezed,
    Object? incidents = freezed,
    Object? incidentsTreshold = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as int,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as int,
      insuredValue: insuredValue == freezed
          ? _value.insuredValue
          : insuredValue // ignore: cast_nullable_to_non_nullable
              as int,
      premium: premium == freezed
          ? _value.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as int,
      incidents: incidents == freezed
          ? _value.incidents
          : incidents // ignore: cast_nullable_to_non_nullable
              as int,
      incidentsTreshold: incidentsTreshold == freezed
          ? _value.incidentsTreshold
          : incidentsTreshold // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PolicyDTOCopyWith<$Res> implements $PolicyDTOCopyWith<$Res> {
  factory _$PolicyDTOCopyWith(
          _PolicyDTO value, $Res Function(_PolicyDTO) then) =
      __$PolicyDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int startDate,
      int endDate,
      int insuredValue,
      int premium,
      int incidents,
      int incidentsTreshold});
}

/// @nodoc
class __$PolicyDTOCopyWithImpl<$Res> extends _$PolicyDTOCopyWithImpl<$Res>
    implements _$PolicyDTOCopyWith<$Res> {
  __$PolicyDTOCopyWithImpl(_PolicyDTO _value, $Res Function(_PolicyDTO) _then)
      : super(_value, (v) => _then(v as _PolicyDTO));

  @override
  _PolicyDTO get _value => super._value as _PolicyDTO;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? insuredValue = freezed,
    Object? premium = freezed,
    Object? incidents = freezed,
    Object? incidentsTreshold = freezed,
  }) {
    return _then(_PolicyDTO(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as int,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as int,
      insuredValue: insuredValue == freezed
          ? _value.insuredValue
          : insuredValue // ignore: cast_nullable_to_non_nullable
              as int,
      premium: premium == freezed
          ? _value.premium
          : premium // ignore: cast_nullable_to_non_nullable
              as int,
      incidents: incidents == freezed
          ? _value.incidents
          : incidents // ignore: cast_nullable_to_non_nullable
              as int,
      incidentsTreshold: incidentsTreshold == freezed
          ? _value.incidentsTreshold
          : incidentsTreshold // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PolicyDTO extends _PolicyDTO {
  const _$_PolicyDTO(
      {required this.startDate,
      required this.endDate,
      required this.insuredValue,
      required this.premium,
      required this.incidents,
      required this.incidentsTreshold})
      : super._();

  @override
  final int startDate;
  @override
  final int endDate;
  @override
  final int insuredValue;
  @override
  final int premium;
  @override
  final int incidents;
  @override
  final int incidentsTreshold;

  @override
  String toString() {
    return 'PolicyDTO(startDate: $startDate, endDate: $endDate, insuredValue: $insuredValue, premium: $premium, incidents: $incidents, incidentsTreshold: $incidentsTreshold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PolicyDTO &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.insuredValue, insuredValue) &&
            const DeepCollectionEquality().equals(other.premium, premium) &&
            const DeepCollectionEquality().equals(other.incidents, incidents) &&
            const DeepCollectionEquality()
                .equals(other.incidentsTreshold, incidentsTreshold));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(insuredValue),
      const DeepCollectionEquality().hash(premium),
      const DeepCollectionEquality().hash(incidents),
      const DeepCollectionEquality().hash(incidentsTreshold));

  @JsonKey(ignore: true)
  @override
  _$PolicyDTOCopyWith<_PolicyDTO> get copyWith =>
      __$PolicyDTOCopyWithImpl<_PolicyDTO>(this, _$identity);
}

abstract class _PolicyDTO extends PolicyDTO {
  const factory _PolicyDTO(
      {required final int startDate,
      required final int endDate,
      required final int insuredValue,
      required final int premium,
      required final int incidents,
      required final int incidentsTreshold}) = _$_PolicyDTO;
  const _PolicyDTO._() : super._();

  @override
  int get startDate => throw _privateConstructorUsedError;
  @override
  int get endDate => throw _privateConstructorUsedError;
  @override
  int get insuredValue => throw _privateConstructorUsedError;
  @override
  int get premium => throw _privateConstructorUsedError;
  @override
  int get incidents => throw _privateConstructorUsedError;
  @override
  int get incidentsTreshold => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PolicyDTOCopyWith<_PolicyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
