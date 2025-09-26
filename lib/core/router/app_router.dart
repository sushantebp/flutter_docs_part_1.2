import 'package:auto_route/auto_route.dart';
import 'package:learn_app_2/core/router/navigation_page.dart';
import 'package:learn_app_2/examples/pages/hero_chair_page.dart';
import 'package:learn_app_2/examples/pages/painting_widets_page.dart';
import 'package:learn_app_2/examples/pages/scrolling_widgets_page.dart';
import 'package:learn_app_2/examples/pages/animation_example_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: NavigationRoute.page, initial: true),
    AutoRoute(page: PaintingWidetsRoute.page),
    AutoRoute(page: ScrollingWidgetsRoute.page),
    AutoRoute(page: AnimationExampleRoute.page),
    AutoRoute(page: HeroChairRoute.page),
  ];
}
