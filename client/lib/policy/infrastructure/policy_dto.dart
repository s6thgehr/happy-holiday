import 'package:client/policy/domain/policy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'policy_dto.freezed.dart';

@freezed
abstract class PolicyDTO with _$PolicyDTO {
  const PolicyDTO._();
  const factory PolicyDTO({
    required int startDate,
    required int endDate,
    required int insuredValue,
    required int premium,
    required int incidents,
    required int incidentsTreshold,
  }) = _PolicyDTO;

  Policy toDomain() {
    return Policy(
      startDate: startDate,
      endDate: endDate,
      insuredValue: insuredValue,
      premium: premium,
      incidents: incidents,
      incidentsTreshold: incidentsTreshold,
    );
  }
}
