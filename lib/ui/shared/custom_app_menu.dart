import 'package:bases_web/ui/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) =>
          constraints.maxWidth > 520 ? _TabletDesktopMenu() : _MobileMenu(),
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contador Provider',
            color: Colors.black,
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Otra página',
            color: Colors.black,
            onPressed: () => locator<NavigationService>().navigateTo('/abc123'),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Stateful 100',
            color: Colors.black,
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful/100'),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Provider 200',
            color: Colors.black,
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider?q=200'),
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contador Provider',
            color: Colors.black,
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Otra página',
            color: Colors.black,
            onPressed: () => locator<NavigationService>().navigateTo('/abc123'),
          ),
        ],
      ),
    );
  }
}
