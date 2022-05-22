// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'policy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Policy {
  int get startDate => throw _privateConstructorUsedError;
  int get endDate => throw _privateConstructorUsedError;
  int get insuredValue => throw _privateConstructorUsedError;
  int get premium => throw _privateConstructorUsedError;
  int get incidents => throw _privateConstructorUsedError;
  int get incidentsTreshold => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PolicyCopyWith<Policy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyCopyWith<$Res> {
  factory $PolicyCopyWith(Policy value, $Res Function(Policy) then) =
      _$PolicyCopyWithImpl<$Res>;
  $Res call(
      {int startDate,
      int endDate,
      int insuredValue,
      int premium,
      int incidents,
      int incidentsTreshold});
}

/// @nodoc
class _$PolicyCopyWithImpl<$Res> implements $PolicyCopyWith<$Res> {
  _$PolicyCopyWithImpl(this._value, this._then);

  final Policy _value;
  // ignore: unused_field
  final $Res Function(Policy) _then;

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
abstract class _$PolicyCopyWith<$Res> implements $PolicyCopyWith<$Res> {
  factory _$PolicyCopyWith(_Policy value, $Res Function(_Policy) then) =
      __$PolicyCopyWithImpl<$Res>;
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
class __$PolicyCopyWithImpl<$Res> extends _$PolicyCopyWithImpl<$Res>
    implements _$PolicyCopyWith<$Res> {
  __$PolicyCopyWithImpl(_Policy _value, $Res Function(_Policy) _then)
      : super(_value, (v) => _then(v as _Policy));

  @override
  _Policy get _value => super._value as _Policy;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? insuredValue = freezed,
    Object? premium = freezed,
    Object? incidents = freezed,
    Object? incidentsTreshold = freezed,
  }) {
    return _then(_Policy(
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

class _$_Policy extends _Policy {
  const _$_Policy(
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
    return 'Policy(startDate: $startDate, endDate: $endDate, insuredValue: $insuredValue, premium: $premium, incidents: $incidents, incidentsTreshold: $incidentsTreshold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Policy &&
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
  _$PolicyCopyWith<_Policy> get copyWith =>
      __$PolicyCopyWithImpl<_Policy>(this, _$identity);
}

abstract class _Policy extends Policy {
  const factory _Policy(
      {required final int startDate,
      required final int endDate,
      required final int insuredValue,
      required final int premium,
      required final int incidents,
      required final int incidentsTreshold}) = _$_Policy;
  const _Policy._() : super._();

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
  _$PolicyCopyWith<_Policy> get copyWith => throw _privateConstructorUsedError;
}
