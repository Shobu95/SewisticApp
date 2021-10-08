import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sewistic_app/screens/core/home/widgets/image_slider.dart';

void main() {
  Future<void> _mountWidget(WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Container(child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Card(
            child: ImagesSlider(),
          ))),
        ),
      ));
  }
  
  testWidgets('CarouselSlider widget is created', (WidgetTester tester) async {
    await _mountWidget(tester);
    Finder carouselFinder = find.byType(CarouselSlider);
    expect(carouselFinder, findsOneWidget);
  });

  testWidgets('Contains the correct items', (WidgetTester tester) async {
    await _mountWidget(tester);
    Finder carouselFinder = find.byType(CarouselSlider);
    expect(carouselFinder, findsOneWidget);

    CarouselSlider carousel = tester.widget(carouselFinder) as CarouselSlider;
    expect(carousel.itemCount, 1);

    Image item = carousel.items[0] as Image;
    expect(item.image.runtimeType, AssetImage);
    expect((item.image as AssetImage).assetName, 'assets/images/cover1.jpg');
  });

}