import 'package:bases_flutter_web/locator.dart';
import 'package:bases_flutter_web/services/navigation_service.dart';
import 'package:bases_flutter_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

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
            //onPressed: () => Navigator.pushNamed(context, "/stateful"),
            onPressed: () =>
                locator<NavigationService>().navigateTo("/stateful"),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Contador Riverpod",
            color: Colors.black,
            //onPressed: () => Navigator.pushNamed(context, "/riverpod"),
            onPressed: () =>
                locator<NavigationService>().navigateTo("/riverpod"),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Otra Página",
            color: Colors.black,
            //onPressed: () => Navigator.pushNamed(context, "/page"),
            onPressed: () => locator<NavigationService>().navigateTo("/page"),
          )
        ],
      ),
    );
  }
}
