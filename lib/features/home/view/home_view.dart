import 'package:flutter/material.dart';
import 'package:steam_deals_application/core/widgets/button/button.dart';

import '../../../core/constants/navigation/routes.dart';
import '../../../core/constants/string/string_constants.dart';
import '../../../core/init/navigation/navigation_service.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button(
              onPressed: () {
                NavigationService.instance.pushNamed(Routes.deals);
              },
              child: const Text(StringConstants.deals),
            ),
            Button(
              onPressed: () {
                NavigationService.instance.pushNamed(Routes.stores);
              },
              child: const Text(StringConstants.stores),
            ),
          ],
        ),
      ),
    );
  }
}
