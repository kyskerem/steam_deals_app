import 'package:flutter/material.dart';
import 'package:steam_deals_application/core/base/error/ierror.dart';
import 'package:steam_deals_application/core/init/scaffold/scaffold_service.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {
            ScaffoldService.instance
                .showErrorSnackbar(IError('toast should open'));
          },
          icon: const Icon(Icons.dangerous),
        ),
      ),
    );
  }
}
