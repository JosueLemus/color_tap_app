import 'package:color_tap_app/presentation/my_home_page.dart';
import 'package:flutter/material.dart';

/// The root widget of the App
class MyApp extends StatelessWidget {
  /// Create a MyApp instance
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Color Tap',
      home: MyHomePage(),
    );
  }
}
