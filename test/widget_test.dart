// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather/features/main/components/weather_title.dart';
import 'package:weather/features/search/components/search_bar.dart';
import 'package:weather/features/search/components/search_item.dart';
import 'package:weather/features/search/search_screen.dart';

void main() {
  testWidgets('correct text in widget title', (tester) async {
    await tester
        .pumpWidget(const MaterialApp(home: WeatherTitle(title: "test")));
    expect(find.text("test"), findsOneWidget);
  });

  testWidgets('incorrect text in widget title', (tester) async {
    await tester
        .pumpWidget(const MaterialApp(home: WeatherTitle(title: "test")));
    expect(find.text("testNone"), findsNothing);
  });

  testWidgets('search bar in search screen', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: SearchScreen()));
    expect(find.byType(SearchBar), findsOneWidget);
  });

  testWidgets('back button in search screen', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: SearchScreen()));
    expect(find.widgetWithIcon(IconButton, Icons.arrow_back), findsOneWidget);
  });

  testWidgets('Do not find search item in search screen initially',
      (tester) async {
    await tester.pumpWidget(const MaterialApp(home: SearchScreen()));
    expect(find.byType(SearchItem), findsNothing);
  });
}
