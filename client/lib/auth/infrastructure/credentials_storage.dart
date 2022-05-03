import 'package:web3dart/web3dart.dart';

class CredentialsStorage {
  Credentials? _credentials;

  Credentials? read() {
    return _credentials;
  }

  void save(Credentials credentials) {
    _credentials = credentials;
  }

  void clear() {
    _credentials = null;
  }
}
