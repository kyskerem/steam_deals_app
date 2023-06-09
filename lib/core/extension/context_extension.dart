import 'package:flutter/material.dart';

extension EdgeInsetsExtension on BuildContext {
  EdgeInsets get lowPadding => const EdgeInsets.all(4);
  EdgeInsets get mediumPadding => const EdgeInsets.all(8);
  EdgeInsets get normalPadding => const EdgeInsets.all(12);
  EdgeInsets get highPadding => const EdgeInsets.all(15);
}
