import 'package:flutter/material.dart';

class Toast extends SnackBar {
  const Toast({
    required super.content,
    super.key,
    super.action,
  }) : super(
          backgroundColor: Colors.indigo,
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(20),
        );
}
