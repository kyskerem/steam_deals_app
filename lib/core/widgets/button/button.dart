import 'package:flutter/material.dart';

class Button extends ElevatedButton {
  const Button({super.key, super.onPressed, super.child})
      : super(
          style: const ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
          ),
        );
}
