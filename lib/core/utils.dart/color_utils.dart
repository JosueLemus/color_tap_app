import 'dart:math';
import 'package:flutter/material.dart';

/// Utility for color generation

abstract final class ColorUtils {
  /// Generates a random RGB color
  static Color generateRandomColor() {
    final random = Random();
    final r = random.nextInt(256);
    final g = random.nextInt(256);
    final b = random.nextInt(256);

    return Color.fromRGBO(r, g, b, 1);
  }

  /// Returns white or black based on the background
  static Color adaptiveTextColor(Color background) {
    const luminanceThreshold = 0.5;

    return background.computeLuminance() < luminanceThreshold
        ? Colors.white
        : Colors.black;
  }
}
