import 'package:client/auth/shared/providers.dart';
import 'package:client/policy/application/policy_notifier.dart';
import 'package:client/policy/infrastructure/policy_remote_service.dart';
import 'package:client/policy/infrastructure/policy_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final policyRemoteServiceProvider = Provider(
  (ref) => PolicyRemoteService(
    ref.watch(credentialsStorageProvider),
  ),
);

final policyRepositoryProvider = Provider(
  (ref) => PolicyRepository(
    ref.watch(policyRemoteServiceProvider),
  ),
);

final policyNotifierProvider =
    StateNotifierProvider.autoDispose<PolicyNotifier, PolicyState>(
  (ref) => PolicyNotifier(
    ref.watch(policyRepositoryProvider),
  ),
);
