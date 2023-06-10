import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({required this.errorMessage, super.key});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(errorMessage),
      ),
    );
  }
}
