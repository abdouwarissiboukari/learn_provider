import 'package:flutter/material.dart';

enum CountType {
  increment,
  decrement,
  reset;

  Icon getIcon() {
    switch (this) {
      case CountType.increment:
        return const Icon(Icons.exposure_plus_1);
      case CountType.decrement:
        return const Icon(Icons.exposure_minus_1);
        break;
      case CountType.reset:
        return const Icon(Icons.exposure_zero);
        break;
    }
  }
}
