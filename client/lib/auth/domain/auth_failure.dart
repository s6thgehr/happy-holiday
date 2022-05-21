import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const AuthFailure._();
  const factory AuthFailure.metaMask([String? message]) = _MetaMask;
  const factory AuthFailure.chainId([String? message]) = _ChainId;
}
