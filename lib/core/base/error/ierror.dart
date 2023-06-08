import 'package:flutter/material.dart';

@immutable
class IError extends Error {
  IError(this.message);

  final String message;
  @override
  String toString() => message;
}
