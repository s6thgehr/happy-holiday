import 'package:client/auth/application/auth_notifier.dart';
import 'package:client/auth/infrastructure/credentials_storage.dart';
import 'package:client/auth/infrastructure/meta_mask_authenticator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final credentialsStorageProvider = Provider((ref) => CredentialsStorage());

final metaMaskAuthenticatorProvider = Provider(
    (ref) => MetaMaskAuthenticator(ref.watch(credentialsStorageProvider)));

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.watch(metaMaskAuthenticatorProvider),
  ),
);
