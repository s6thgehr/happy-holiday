import 'package:client/core/infrastructure/contract_exceptions.dart';
import 'package:client/policy/domain/policy.dart';
import 'package:client/policy/domain/policy_failure.dart';
import 'package:client/policy/infrastructure/policy_remote_service.dart';
import 'package:dartz/dartz.dart';

class PolicyRepository {
  final PolicyRemoteService _remoteService;

  PolicyRepository(this._remoteService);

  Future<Either<PolicyFailure, List<Policy>>> getPolicy() async {
    try {
      final result = await _remoteService.getPolicy();
      return right(result.map((e) => e.toDomain()).toList());
    } on ContractException {
      return left(const PolicyFailure.api());
    }
  }
}
