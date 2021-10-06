import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sewistic_app/screens/core/home/widgets/title_divider.dart';

void main() {
  Future<void> _mountWidget(WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: TitleDivider("Test Title"),));
  }
  
  testWidgets('The title is rendered', (WidgetTester tester) async {
    await _mountWidget(tester);
    Finder titleFinder = find.text('Test Title');
    expect(titleFinder, findsOneWidget);
  });

  testWidgets('The divider is rendered', (WidgetTester tester) async {
    await _mountWidget(tester);
    Finder dividerFinder = find.byType(Divider);
    expect(dividerFinder, findsOneWidget);
  });

}