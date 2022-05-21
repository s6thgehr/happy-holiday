// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../home/home_page.dart' as _i1;
import '../../policy/presentation/buy_policy_page.dart' as _i2;
import '../../smart_contract/presentation/smart_contract_page.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    BuyPolicyRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.BuyPolicyPage());
    },
    SmartContractRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SmartContractPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeRoute.name, path: '/'),
        _i4.RouteConfig(BuyPolicyRoute.name, path: '/policy'),
        _i4.RouteConfig(SmartContractRoute.name, path: '/smart_contract')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.BuyPolicyPage]
class BuyPolicyRoute extends _i4.PageRouteInfo<void> {
  const BuyPolicyRoute() : super(BuyPolicyRoute.name, path: '/policy');

  static const String name = 'BuyPolicyRoute';
}

/// generated route for
/// [_i3.SmartContractPage]
class SmartContractRoute extends _i4.PageRouteInfo<void> {
  const SmartContractRoute()
      : super(SmartContractRoute.name, path: '/smart_contract');

  static const String name = 'SmartContractRoute';
}
