import 'package:flutter/material.dart';
import 'package:steam_deals_application/core/constants/navigation/routes.dart';
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
                NavigationService.instance.pushNamed(Routes.gameDetail);
              },
              child: const Text('Deals'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Button(
                onPressed: () {
                  NavigationService.instance.pushNamed(Routes.stores);
                },
                child: const Text('Stores'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
