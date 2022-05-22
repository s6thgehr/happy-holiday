import 'package:freezed_annotation/freezed_annotation.dart';
part 'policy.freezed.dart';

@freezed
abstract class Policy with _$Policy {
  const Policy._();
  const factory Policy({
    required int startDate,
    required int endDate,
    required int insuredValue,
    required int premium,
    required int incidents,
    required int incidentsTreshold,
  }) = _Policy;
}
