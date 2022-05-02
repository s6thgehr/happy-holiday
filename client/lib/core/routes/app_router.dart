import 'package:auto_route/auto_route.dart';
import 'package:client/home/home_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: HomePage, initial: true),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
