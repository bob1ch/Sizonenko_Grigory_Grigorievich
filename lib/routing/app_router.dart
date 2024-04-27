import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../UI/homepage_screen.dart';
import '../UI/settings_screen.dart';
import '../functions/myapp.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|App,Route')
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    /// routes go here
    AutoRoute(page: MyRoute.page, initial: true),
    AutoRoute(page: SettingsRoute.page),
  ];
}