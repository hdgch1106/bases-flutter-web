import 'package:bases_flutter_web/ui/views/counter_riverpod_view.dart';
import 'package:bases_flutter_web/ui/views/counter_view.dart';
import 'package:bases_flutter_web/ui/views/view_404.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/stateful":
        return _fadeRoute(const CounterView(base: "10"), "/stateful");
      case "/riverpod":
        return _fadeRoute(const CounterRiverpodView(base: "15"), "/riverpod");
      default:
        return _fadeRoute(const View404(), "/404");
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => child,
      transitionDuration: const Duration(milliseconds: 300),
      transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
          ? FadeTransition(
              opacity: animation,
              child: child,
            )
          : CupertinoPageTransition(
              primaryRouteAnimation: animation,
              secondaryRouteAnimation: __,
              linearTransition: true,
              child: child,
            ),
    );
  }
}
