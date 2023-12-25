import 'package:bases_flutter_web/locator.dart';
import 'package:bases_flutter_web/router/route_generator.dart';
import 'package:bases_flutter_web/services/navigation_service.dart';
import 'package:bases_flutter_web/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  setupLocator();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? const CircularProgressIndicator(strokeWidth: 2),
        );
      },
      // routes: {
      //   '/stateful': (_) => const CounterPage(),
      //   '/riverpod': (_) => const CounterRiverpodPage(),
      // },
    );
  }
}
