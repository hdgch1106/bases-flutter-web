import 'package:bases_flutter_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return (constraints.maxWidth > 860)
            ? const _TabletDesktopMenu()
            : const _MobileMenu();
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: "Contador Stateful",
            color: Colors.black,
            onPressed: () => context.go("/stateful"),
            /* onPressed: () => Navigator.pushNamed(context, "/stateful"),
            onPressed: () =>
                locator<NavigationService>().navigateTo("/stateful"), */
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Contador Riverpod",
            color: Colors.black,
            onPressed: () => context.go("/riverpod"),
            /* onPressed: () => Navigator.pushNamed(context, "/riverpod"),
            onPressed: () =>
                locator<NavigationService>().navigateTo("/riverpod"), */
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Otra Página",
            color: Colors.black,
            onPressed: () => context.go("/page"),
            /* onPressed: () => Navigator.pushNamed(context, "/page"),
            onPressed: () => locator<NavigationService>().navigateTo("/page"), */
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Contador Stateful 100",
            color: Colors.black,
            onPressed: () => context.go("/stateful/100"),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Contador Riverpod 500",
            color: Colors.black,
            onPressed: () => context.go("/riverpod?q=500"),
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: "Contador Stateful",
            color: Colors.black,
            onPressed: () => context.go("/stateful"),
            /* onPressed: () => Navigator.pushNamed(context, "/stateful"),
            onPressed: () =>
                locator<NavigationService>().navigateTo("/stateful"), */
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Contador Riverpod",
            color: Colors.black,
            onPressed: () => context.go("/riverpod"),
            /* onPressed: () => Navigator.pushNamed(context, "/riverpod"),
            onPressed: () =>
                locator<NavigationService>().navigateTo("/riverpod"), */
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Otra Página",
            color: Colors.black,
            onPressed: () => context.go("/page"),
            /* onPressed: () => Navigator.pushNamed(context, "/page"),
            onPressed: () => locator<NavigationService>().navigateTo("/page"), */
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Contador Stateful 100",
            color: Colors.black,
            onPressed: () => context.go("/stateful/100"),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Contador Riverpod 500",
            color: Colors.black,
            onPressed: () => context.go("/riverpod?q=500"),
          ),
        ],
      ),
    );
  }
}
