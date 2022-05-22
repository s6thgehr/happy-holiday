import 'package:client/HappyHoliday.g.dart';
import 'package:client/auth/infrastructure/credentials_storage.dart';
import 'package:client/core/infrastructure/contract_exceptions.dart';
import 'package:client/policy/infrastructure/policy_dto.dart';
import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';
import 'package:web_socket_channel/io.dart';

class PolicyRemoteService {
  final CredentialsStorage _credentialsStorage;
  PolicyRemoteService(this._credentialsStorage);

  static const String rpcUrl =
      'https://eth-rinkeby.alchemyapi.io/v2/hhO4ccRyEEVB7pEuF4q2UHWXQipHEAmn';
  static const String wsUrl =
      'wss://eth-rinkeby.alchemyapi.io/v2/hhO4ccRyEEVB7pEuF4q2UHWXQipHEAmn';

  final EthereumAddress _contractAddr =
      EthereumAddress.fromHex('0x5919aA7AB67cfD5531d168f97C7621D0FeA670D0');

  Future<List<PolicyDTO>> getPolicy() async {
    final client = Web3Client(
      rpcUrl,
      Client(),
      socketConnector: () {
        return IOWebSocketChannel.connect(wsUrl).cast<String>();
      },
    );
    final happyHolidayContract =
        HappyHoliday(address: _contractAddr, client: client);
    final _buyer = _credentialsStorage.read();
    if (_buyer != null) {
      final policies = await happyHolidayContract
          .getPoliciesByBuyer(await _buyer.extractAddress());
      List<PolicyDTO> policiesDTO = policies
          .map(
            (e) => PolicyDTO(
              startDate: e.startDate,
              endDate: e.endDate,
              insuredValue: e.insuredValue,
              premium: e.premium,
              incidents: e.incidents,
              incidentsTreshold: e.incidentsTreshold,
            ),
          )
          .toList();
      return policiesDTO;
    } else {
      throw ContractException();
    }
  }
}
