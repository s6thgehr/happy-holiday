// Generated code, do not modify. Run `build_runner build` to re-generate!
// @dart=2.12
import 'package:web3dart/web3dart.dart' as _i1;
import 'dart:typed_data' as _i2;

final _contractAbi = _i1.ContractAbi.fromJson(
    '[{"inputs":[{"internalType":"address","name":"_link","type":"address"},{"internalType":"address","name":"_oracle","type":"address"},{"internalType":"bytes32","name":"_rainJobId","type":"bytes32"},{"internalType":"uint256","name":"_fee","type":"uint256"}],"stateMutability":"nonpayable","type":"constructor","name":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"bytes32","name":"id","type":"bytes32"}],"name":"ChainlinkCancelled","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"bytes32","name":"id","type":"bytes32"}],"name":"ChainlinkFulfilled","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"bytes32","name":"id","type":"bytes32"}],"name":"ChainlinkRequested","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"uint256","name":"id","type":"uint256"},{"indexed":true,"internalType":"uint8","name":"incidents","type":"uint8"}],"name":"IncidentReported","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"from","type":"address"},{"indexed":true,"internalType":"address","name":"to","type":"address"}],"name":"OwnershipTransferRequested","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"from","type":"address"},{"indexed":true,"internalType":"address","name":"to","type":"address"}],"name":"OwnershipTransferred","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"beneficiary","type":"address"},{"indexed":true,"internalType":"uint256","name":"id","type":"uint256"},{"indexed":true,"internalType":"uint256","name":"insuredValue","type":"uint256"}],"name":"PolicyPaidOut","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"beneficiary","type":"address"},{"indexed":true,"internalType":"uint256","name":"id","type":"uint256"}],"name":"PolicySubscription","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"bytes32","name":"requestId","type":"bytes32"},{"indexed":true,"internalType":"uint256","name":"key","type":"uint256"}],"name":"RequestLocationFulfilled","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"bytes32","name":"requestId","type":"bytes32"},{"indexed":true,"internalType":"uint256","name":"rain","type":"uint256"}],"name":"RequestRainFulfilled","type":"event"},{"inputs":[],"name":"acceptOwnership","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"_buyer","type":"address"}],"name":"balanceOf","outputs":[{"internalType":"uint256","name":"_balance","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"_policyId","type":"uint256"}],"name":"buyerOf","outputs":[{"internalType":"address","name":"_buyer","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"bytes","name":"","type":"bytes"}],"name":"checkUpkeep","outputs":[{"internalType":"bool","name":"upkeepNeeded","type":"bool"},{"internalType":"bytes","name":"","type":"bytes"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"locationKey","type":"uint256"}],"name":"concatenate","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"pure","type":"function"},{"inputs":[],"name":"fee","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"bytes32","name":"_requestId","type":"bytes32"},{"internalType":"uint256","name":"_rainPast24h","type":"uint256"}],"name":"fulfillRainPast24h","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"_buyer","type":"address"}],"name":"getPoliciesByBuyer","outputs":[{"components":[{"internalType":"uint256","name":"id","type":"uint256"},{"internalType":"address payable","name":"beneficiary","type":"address"},{"internalType":"uint256","name":"locationKey","type":"uint256"},{"internalType":"uint256","name":"startDate","type":"uint256"},{"internalType":"uint256","name":"endDate","type":"uint256"},{"internalType":"uint256","name":"insuredValue","type":"uint256"},{"internalType":"uint256","name":"premium","type":"uint256"},{"internalType":"uint256","name":"rainTreshold","type":"uint256"},{"internalType":"uint8","name":"incidentsTreshold","type":"uint8"},{"internalType":"uint8","name":"incidents","type":"uint8"},{"internalType":"enum HappyHoliday.PolicyStatus","name":"status","type":"uint8"}],"internalType":"struct HappyHoliday.Policy[]","name":"","type":"tuple[]"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"interval","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"lastTimeStamp","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"owner","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"bytes","name":"","type":"bytes"}],"name":"performUpkeep","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"","type":"uint256"}],"name":"policies","outputs":[{"internalType":"uint256","name":"id","type":"uint256"},{"internalType":"address payable","name":"beneficiary","type":"address"},{"internalType":"uint256","name":"locationKey","type":"uint256"},{"internalType":"uint256","name":"startDate","type":"uint256"},{"internalType":"uint256","name":"endDate","type":"uint256"},{"internalType":"uint256","name":"insuredValue","type":"uint256"},{"internalType":"uint256","name":"premium","type":"uint256"},{"internalType":"uint256","name":"rainTreshold","type":"uint256"},{"internalType":"uint8","name":"incidentsTreshold","type":"uint8"},{"internalType":"uint8","name":"incidents","type":"uint8"},{"internalType":"enum HappyHoliday.PolicyStatus","name":"status","type":"uint8"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"policyId","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"rainJobId","outputs":[{"internalType":"bytes32","name":"","type":"bytes32"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"rainPast24h","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"string","name":"url","type":"string"},{"internalType":"uint256","name":"_policyId","type":"uint256"}],"name":"requestRainPast24h","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"_startDate","type":"uint256"},{"internalType":"uint256","name":"_endDate","type":"uint256"},{"internalType":"uint256","name":"_locationKey","type":"uint256"},{"internalType":"uint256","name":"_insuredValue","type":"uint256"},{"internalType":"uint256","name":"_premium","type":"uint256"},{"internalType":"uint8","name":"_incidentsTreshold","type":"uint8"}],"name":"subscribePolicy","outputs":[],"stateMutability":"payable","type":"function"},{"inputs":[{"internalType":"address","name":"to","type":"address"}],"name":"transferOwnership","outputs":[],"stateMutability":"nonpayable","type":"function"}]',
    'HappyHoliday');

class HappyHoliday extends _i1.GeneratedContract {
  HappyHoliday(
      {required _i1.EthereumAddress address,
      required _i1.Web3Client client,
      int? chainId})
      : super(_i1.DeployedContract(_contractAbi, address), client, chainId);

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> acceptOwnership(
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[1];
    assert(checkSignature(function, '79ba5097'));
    final params = [];
    return write(credentials, transaction, function, params);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> balanceOf(_i1.EthereumAddress _buyer,
      {_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[2];
    assert(checkSignature(function, '70a08231'));
    final params = [_buyer];
    final response = await read(function, params, atBlock);
    return (response[0] as BigInt);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<_i1.EthereumAddress> buyerOf(BigInt _policyId,
      {_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[3];
    assert(checkSignature(function, 'da0ade50'));
    final params = [_policyId];
    final response = await read(function, params, atBlock);
    return (response[0] as _i1.EthereumAddress);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<CheckUpkeep> checkUpkeep(_i2.Uint8List $param2,
      {_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[4];
    assert(checkSignature(function, '6e04ff0d'));
    final params = [$param2];
    final response = await read(function, params, atBlock);
    return CheckUpkeep(response);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<String> concatenate(BigInt locationKey,
      {_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[5];
    assert(checkSignature(function, '1718fe16'));
    final params = [locationKey];
    final response = await read(function, params, atBlock);
    return (response[0] as String);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> fee({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[6];
    assert(checkSignature(function, 'ddca3f43'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as BigInt);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> fulfillRainPast24h(
      _i2.Uint8List _requestId, BigInt _rainPast24h,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[7];
    assert(checkSignature(function, 'd5bd4209'));
    final params = [_requestId, _rainPast24h];
    return write(credentials, transaction, function, params);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<List<dynamic>> getPoliciesByBuyer(_i1.EthereumAddress _buyer,
      {_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[8];
    assert(checkSignature(function, '09d090c5'));
    final params = [_buyer];
    final response = await read(function, params, atBlock);
    return (response[0] as List<dynamic>).cast<dynamic>();
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> interval({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[9];
    assert(checkSignature(function, '947a36fb'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as BigInt);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> lastTimeStamp({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[10];
    assert(checkSignature(function, '3f3b3b27'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as BigInt);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<_i1.EthereumAddress> owner({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[11];
    assert(checkSignature(function, '8da5cb5b'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as _i1.EthereumAddress);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> performUpkeep(_i2.Uint8List $param7,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[12];
    assert(checkSignature(function, '4585e33b'));
    final params = [];
    return write(credentials, transaction, function, params);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<Policies> policies(BigInt $param8, {_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[13];
    assert(checkSignature(function, 'd3e89483'));
    final params = [$param8];
    final response = await read(function, params, atBlock);
    return Policies(response);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> policyId({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[14];
    assert(checkSignature(function, 'ee89ef3a'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as BigInt);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<_i2.Uint8List> rainJobId({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[15];
    assert(checkSignature(function, '5d092b46'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as _i2.Uint8List);
  }

  /// The optional [atBlock] parameter can be used to view historical data. When
  /// set, the function will be evaluated in the specified block. By default, the
  /// latest on-chain block will be used.
  Future<BigInt> rainPast24h({_i1.BlockNum? atBlock}) async {
    final function = self.abi.functions[16];
    assert(checkSignature(function, '34d4e966'));
    final params = [];
    final response = await read(function, params, atBlock);
    return (response[0] as BigInt);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> requestRainPast24h(String url, BigInt _policyId,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[17];
    assert(checkSignature(function, '8b53e7a9'));
    final params = [url, _policyId];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> subscribePolicy(
      BigInt _startDate,
      BigInt _endDate,
      BigInt _locationKey,
      BigInt _insuredValue,
      BigInt _premium,
      BigInt _incidentsTreshold,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[18];
    assert(checkSignature(function, 'acd3dfab'));
    final params = [
      _startDate,
      _endDate,
      _locationKey,
      _insuredValue,
      _premium,
      _incidentsTreshold
    ];
    return write(credentials, transaction, function, params);
  }

  /// The optional [transaction] parameter can be used to override parameters
  /// like the gas price, nonce and max gas. The `data` and `to` fields will be
  /// set by the contract.
  Future<String> transferOwnership(_i1.EthereumAddress to,
      {required _i1.Credentials credentials,
      _i1.Transaction? transaction}) async {
    final function = self.abi.functions[19];
    assert(checkSignature(function, 'f2fde38b'));
    final params = [to];
    return write(credentials, transaction, function, params);
  }

  /// Returns a live stream of all ChainlinkCancelled events emitted by this contract.
  Stream<ChainlinkCancelled> chainlinkCancelledEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('ChainlinkCancelled');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return ChainlinkCancelled(decoded);
    });
  }

  /// Returns a live stream of all ChainlinkFulfilled events emitted by this contract.
  Stream<ChainlinkFulfilled> chainlinkFulfilledEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('ChainlinkFulfilled');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return ChainlinkFulfilled(decoded);
    });
  }

  /// Returns a live stream of all ChainlinkRequested events emitted by this contract.
  Stream<ChainlinkRequested> chainlinkRequestedEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('ChainlinkRequested');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return ChainlinkRequested(decoded);
    });
  }

  /// Returns a live stream of all IncidentReported events emitted by this contract.
  Stream<IncidentReported> incidentReportedEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('IncidentReported');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return IncidentReported(decoded);
    });
  }

  /// Returns a live stream of all OwnershipTransferRequested events emitted by this contract.
  Stream<OwnershipTransferRequested> ownershipTransferRequestedEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('OwnershipTransferRequested');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return OwnershipTransferRequested(decoded);
    });
  }

  /// Returns a live stream of all OwnershipTransferred events emitted by this contract.
  Stream<OwnershipTransferred> ownershipTransferredEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('OwnershipTransferred');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return OwnershipTransferred(decoded);
    });
  }

  /// Returns a live stream of all PolicyPaidOut events emitted by this contract.
  Stream<PolicyPaidOut> policyPaidOutEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('PolicyPaidOut');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return PolicyPaidOut(decoded);
    });
  }

  /// Returns a live stream of all PolicySubscription events emitted by this contract.
  Stream<PolicySubscription> policySubscriptionEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('PolicySubscription');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return PolicySubscription(decoded);
    });
  }

  /// Returns a live stream of all RequestLocationFulfilled events emitted by this contract.
  Stream<RequestLocationFulfilled> requestLocationFulfilledEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('RequestLocationFulfilled');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return RequestLocationFulfilled(decoded);
    });
  }

  /// Returns a live stream of all RequestRainFulfilled events emitted by this contract.
  Stream<RequestRainFulfilled> requestRainFulfilledEvents(
      {_i1.BlockNum? fromBlock, _i1.BlockNum? toBlock}) {
    final event = self.event('RequestRainFulfilled');
    final filter = _i1.FilterOptions.events(
        contract: self, event: event, fromBlock: fromBlock, toBlock: toBlock);
    return client.events(filter).map((_i1.FilterEvent result) {
      final decoded = event.decodeResults(result.topics!, result.data!);
      return RequestRainFulfilled(decoded);
    });
  }
}

class CheckUpkeep {
  CheckUpkeep(List<dynamic> response)
      : upkeepNeeded = (response[0] as bool),
        var2 = (response[1] as _i2.Uint8List);

  final bool upkeepNeeded;

  final _i2.Uint8List var2;
}

class Policies {
  Policies(List<dynamic> response)
      : id = (response[0] as BigInt),
        beneficiary = (response[1] as _i1.EthereumAddress),
        locationKey = (response[2] as BigInt),
        startDate = (response[3] as BigInt),
        endDate = (response[4] as BigInt),
        insuredValue = (response[5] as BigInt),
        premium = (response[6] as BigInt),
        rainTreshold = (response[7] as BigInt),
        incidentsTreshold = (response[8] as BigInt),
        incidents = (response[9] as BigInt),
        status = (response[10] as BigInt);

  final BigInt id;

  final _i1.EthereumAddress beneficiary;

  final BigInt locationKey;

  final BigInt startDate;

  final BigInt endDate;

  final BigInt insuredValue;

  final BigInt premium;

  final BigInt rainTreshold;

  final BigInt incidentsTreshold;

  final BigInt incidents;

  final BigInt status;
}

class ChainlinkCancelled {
  ChainlinkCancelled(List<dynamic> response)
      : id = (response[0] as _i2.Uint8List);

  final _i2.Uint8List id;
}

class ChainlinkFulfilled {
  ChainlinkFulfilled(List<dynamic> response)
      : id = (response[0] as _i2.Uint8List);

  final _i2.Uint8List id;
}

class ChainlinkRequested {
  ChainlinkRequested(List<dynamic> response)
      : id = (response[0] as _i2.Uint8List);

  final _i2.Uint8List id;
}

class IncidentReported {
  IncidentReported(List<dynamic> response)
      : id = (response[0] as BigInt),
        incidents = (response[1] as BigInt);

  final BigInt id;

  final BigInt incidents;
}

class OwnershipTransferRequested {
  OwnershipTransferRequested(List<dynamic> response)
      : from = (response[0] as _i1.EthereumAddress),
        to = (response[1] as _i1.EthereumAddress);

  final _i1.EthereumAddress from;

  final _i1.EthereumAddress to;
}

class OwnershipTransferred {
  OwnershipTransferred(List<dynamic> response)
      : from = (response[0] as _i1.EthereumAddress),
        to = (response[1] as _i1.EthereumAddress);

  final _i1.EthereumAddress from;

  final _i1.EthereumAddress to;
}

class PolicyPaidOut {
  PolicyPaidOut(List<dynamic> response)
      : beneficiary = (response[0] as _i1.EthereumAddress),
        id = (response[1] as BigInt),
        insuredValue = (response[2] as BigInt);

  final _i1.EthereumAddress beneficiary;

  final BigInt id;

  final BigInt insuredValue;
}

class PolicySubscription {
  PolicySubscription(List<dynamic> response)
      : beneficiary = (response[0] as _i1.EthereumAddress),
        id = (response[1] as BigInt);

  final _i1.EthereumAddress beneficiary;

  final BigInt id;
}

class RequestLocationFulfilled {
  RequestLocationFulfilled(List<dynamic> response)
      : requestId = (response[0] as _i2.Uint8List),
        key = (response[1] as BigInt);

  final _i2.Uint8List requestId;

  final BigInt key;
}

class RequestRainFulfilled {
  RequestRainFulfilled(List<dynamic> response)
      : requestId = (response[0] as _i2.Uint8List),
        rain = (response[1] as BigInt);

  final _i2.Uint8List requestId;

  final BigInt rain;
}
