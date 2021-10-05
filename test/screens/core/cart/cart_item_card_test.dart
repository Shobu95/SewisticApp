import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:sewistic_app/models/order/cart_item.dart';
import 'package:sewistic_app/models/product/product.dart';
import 'package:sewistic_app/screens/core/cart/cart.dart';
import 'package:sewistic_app/screens/core/cart/widgets/cart_item_card.dart';
import 'package:sewistic_app/services/design_options.dart';

void main() {
  Product mockProduct = Product(
      'Mock Product Name',
      '650',
      'https://i2.wp.com/sewistic.com/wp-content/uploads/2020/06/deal-01-1-scaled.jpg?fit=252%2C300&ssl=1',
      "Classic 3 Piece Deal features the Shirt & trouser stitching as per catalog design with neckline and sleeves of your choice.",
      [
        ClothDesignOptions.NECK_LINES(),
        ClothDesignOptions.SLEEVES_WOMEN(),
        ClothDesignOptions.BOTTOMS_WOMEN()
      ],
    );
    
  CartItem mockCartItem = CartItem(
      mockProduct, 
      ['V Neckline', 'Quarter sleeves', 'Standard Shalwar'],
      'Sample Provided',
      true
    );

  CartState mockCartState = CartState();

  Future<void> _mountWidget(WidgetTester tester) async {
    await mockNetworkImagesFor(() async => 
    await tester.pumpWidget(
      MaterialApp(
        home: CartItemCard(mockCartItem, mockCartState),
      )));
  }
  testWidgets('Card widget is created', (WidgetTester tester) async {
    await _mountWidget(tester);
    Finder cardFinder = find.byType(Card);
    expect(cardFinder, findsOneWidget);
  });

  testWidgets('Product name is on card', (WidgetTester tester) async {
    await _mountWidget(tester);
    Finder nameFinder = find.text('Mock Product Name');
    expect(nameFinder, findsOneWidget);
  });

  testWidgets('Product price is on card', (WidgetTester tester) async {
    await _mountWidget(tester);
    Finder nameFinder = find.text('Rs.650');
    expect(nameFinder, findsOneWidget);
  });

  testWidgets('Measurement option is on card', (WidgetTester tester) async {
    await _mountWidget(tester);
    Finder optionFinder = find.text('Sample Provided');
    expect(optionFinder, findsOneWidget);
  });

  testWidgets('Design options are on card', (WidgetTester tester) async {
    await _mountWidget(tester);
    Finder optionsFinder = find.text(mockCartItem.designOptions.join(', '));
    expect(optionsFinder, findsOneWidget);
  });

  testWidgets('Card includes the correct image', (WidgetTester tester) async {
    await _mountWidget(tester);
    Finder imageFinder = find.byType(Image);
    expect(imageFinder, findsOneWidget);
    NetworkImage image = (tester.widget(imageFinder) as Image).image as NetworkImage;
    expect(image.url, mockProduct.image);
  });

  testWidgets('Checkbox has correct value', (WidgetTester tester) async {
    await _mountWidget(tester);
    Finder checkboxFinder = find.byType(Checkbox);
    expect(checkboxFinder, findsOneWidget);
    
    Checkbox checkbox = tester.widget(checkboxFinder) as Checkbox;
    expect(checkbox.value, true);
  });

}