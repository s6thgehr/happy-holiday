import 'dart:html';

import 'package:client/auth/domain/auth_failure.dart';
import 'package:client/auth/infrastructure/credentials_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:web3dart/browser.dart';

class MetaMaskAuthenticator {
  final CredentialsStorage _credentialsStorage;

  MetaMaskAuthenticator(this._credentialsStorage);

  Future<Either<AuthFailure, Unit>> signIn() async {
    final eth = window.ethereum;
    if (eth == null) {
      return left(const AuthFailure.metaMask("MetaMask is not available."));
    }
    // if (eth.chainId != 4) {
    //   return left(const AuthFailure.chainId("Please use the Rinkeby Network"));
    // }

    final credentials = await eth.requestAccount();

    _credentialsStorage.save(credentials);
    return right(unit);
  }
}
