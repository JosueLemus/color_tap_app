import 'package:color_tap_app/core/contants/app_strings.dart';
import 'package:color_tap_app/core/utils.dart/color_utils.dart';
import 'package:flutter/material.dart';

/// The page that displays a tappable color changing background
class MyHomePage extends StatefulWidget {
  /// Create a MyHomePage instance
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color bgColor = ColorUtils.generateRandomColor();
  Color get textColor => ColorUtils.adaptiveTextColor(bgColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            bgColor = ColorUtils.generateRandomColor();
          });
        },
        child: SizedBox.expand(
          child: ColoredBox(
            color: bgColor,
            child: Center(
              child: Text(
                AppStrings.helloThere,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  color: textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
