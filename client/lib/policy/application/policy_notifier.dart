import 'package:client/policy/domain/policy.dart';
import 'package:client/policy/infrastructure/policy_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'policy_notifier.freezed.dart';

@freezed
abstract class PolicyState with _$PolicyState {
  const PolicyState._();
  const factory PolicyState.initial() = _Initial;
  const factory PolicyState.loadInProgress() = _LoadInProgress;
  const factory PolicyState.loadSuccess(List<Policy> policies) = _LoadSuccess;
  const factory PolicyState.loadFailure() = _LoadFailure;
}

class PolicyNotifier extends StateNotifier<PolicyState> {
  final PolicyRepository _repository;

  PolicyNotifier(
    this._repository,
  ) : super(const PolicyState.initial());

  Future<void> getPolicies() async {
    state = const PolicyState.loadInProgress();
    final failureOrSuccess = await _repository.getPolicy();
    state = failureOrSuccess.fold(
      (l) => const PolicyState.loadFailure(),
      (r) => PolicyState.loadSuccess(r),
    );
  }
}
