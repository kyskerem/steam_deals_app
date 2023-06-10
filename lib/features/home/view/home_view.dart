import 'package:flutter/material.dart';
import 'package:steam_deals_application/core/constants/navigation/routes.dart';
import 'package:steam_deals_application/core/constants/string/string_constants.dart';
import 'package:steam_deals_application/core/extension/context_extension.dart';
import 'package:steam_deals_application/core/init/navigation/navigation_service.dart';
import 'package:steam_deals_application/core/widgets/button/button.dart';

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
            Container(
              margin: context.highPadding,
              child: Button(
                onPressed: () {
                  NavigationService.instance.pushNamed(Routes.stores);
                },
                child: const Text(StringConstants.stores),
              ),
            )
          ],
        ),
      ),
    );
  }
}
