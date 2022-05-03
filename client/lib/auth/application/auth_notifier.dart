import 'package:client/auth/domain/auth_failure.dart';
import 'package:client/auth/infrastructure/meta_mask_authenticator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
part 'auth_notifier.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.failure(AuthFailure failure) = _Failure;
}

class AuthNotifier extends StateNotifier<AuthState> {
  final MetaMaskAuthenticator _authenticator;

  AuthNotifier(this._authenticator) : super(const AuthState.unauthenticated());

  Future<void> signIn() async {
    final failureOrSuccess = await _authenticator.signIn();
    state = failureOrSuccess.fold(
      (l) => AuthState.failure(l),
      (r) => const AuthState.authenticated(),
    );
  }
}
