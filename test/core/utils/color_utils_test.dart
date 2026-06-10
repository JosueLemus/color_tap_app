import 'package:color_tap_app/core/utils.dart/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColorUtils', () {
    test('generateRandomColor returns a valid color', () {
      final color = ColorUtils.generateRandomColor();
      expect(color, isA<Color>());
    });

    test('adaptiveTextColor returns white for dark background', () {
      expect(ColorUtils.adaptiveTextColor(Colors.black), equals(Colors.white));
    });

    test('adaptiveTextColor returns black for light background', () {
      expect(ColorUtils.adaptiveTextColor(Colors.white), equals(Colors.black));
    });
  });
}
