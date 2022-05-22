import 'package:freezed_annotation/freezed_annotation.dart';
part 'policy_failure.freezed.dart';

@freezed
abstract class PolicyFailure with _$PolicyFailure {
  const PolicyFailure._();
  const factory PolicyFailure.api() = _Api;
}
