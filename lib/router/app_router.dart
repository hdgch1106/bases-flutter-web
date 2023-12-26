import 'package:bases_flutter_web/ui/layout/main_layout_page.dart';
import 'package:bases_flutter_web/ui/pages/page_404.dart';
import 'package:bases_flutter_web/ui/views/counter_riverpod_view.dart';
import 'package:bases_flutter_web/ui/views/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  initialLocation: "/stateful",
  navigatorKey: _rootNavigatorKey,
  errorPageBuilder: (context, state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const Page404(),
    );
  },
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      pageBuilder: (_, state, child) {
        return NoTransitionPage(
          key: state.pageKey,
          child: MainLayoutPage(child: child),
        );
      },
      routes: [
        GoRoute(
          path: "/stateful",
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const CounterView(),
            );
          },
        ),
        GoRoute(
          path: "/riverpod",
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) {
            return NoTransitionPage(
              key: state.pageKey,
              child: const CounterRiverpodView(),
            );
          },
        ),
      ],
    ),
  ],
);
