import 'package:auto_route/auto_route.dart';
import 'package:learn_app_2/examples/pages/navigation_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: NavigationRoute.page, initial: true),
  ];
}
