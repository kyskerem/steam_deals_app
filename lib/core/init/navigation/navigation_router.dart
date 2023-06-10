import 'package:flutter/material.dart';
import 'package:steam_deals_application/core/base/model/inavigation_router.dart';
import 'package:steam_deals_application/features/deal_list/view/deals_view.dart';
import 'package:steam_deals_application/features/store/view/store_view.dart';

import '../../../features/home/view/home_view.dart';
import '../../base/error/ierror.dart';
import '../../constants/navigation/routes.dart';

@immutable
class NavigationRouter extends INavigationRouter {
  NavigationRouter._init();
  static final NavigationRouter router = NavigationRouter._init();
  @override
  Route<Widget> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.root:
        return _pageBuilder(const HomeView());
      case Routes.stores:
        return _pageBuilder(const StoreView());
      case Routes.deals:
        return _pageBuilder(const DealsView());
      default:
        throw IError('page is not defined');
    }
  }

  MaterialPageRoute<Widget> _pageBuilder(Widget page) =>
      MaterialPageRoute(builder: (context) => page);
}
