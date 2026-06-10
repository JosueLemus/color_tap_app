import 'package:color_tap_app/presentation/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('App renders and shows Hello there text', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: MyHomePage()));
    expect(find.text('Hello there'), findsOneWidget);
  });
}
