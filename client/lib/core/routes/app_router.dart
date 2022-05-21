import 'package:auto_route/auto_route.dart';
import 'package:client/home/home_page.dart';
import 'package:client/policy/presentation/buy_policy_page.dart';
import 'package:client/smart_contract/presentation/smart_contract_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: HomePage, initial: true),
    MaterialRoute(page: BuyPolicyPage, path: '/policy'),
    MaterialRoute(page: SmartContractPage, path: '/smart_contract')
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
