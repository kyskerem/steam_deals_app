import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    required this.errorMessage,
    required this.lottiePath,
    super.key,
  });
  final String errorMessage;
  final String lottiePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Lottie.asset(lottiePath),
            Text(errorMessage),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
