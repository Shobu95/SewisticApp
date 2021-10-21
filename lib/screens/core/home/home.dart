import 'package:flutter/material.dart';
import 'package:sewistic_app/models/product/product.dart';
import 'package:sewistic_app/screens/core/home/widgets/image_slider.dart';
import 'package:sewistic_app/screens/core/home/widgets/title_divider.dart';
import 'package:sewistic_app/screens/core/product/product_card_home.dart';
import 'package:sewistic_app/screens/core/product/product_details/product_details.dart';
import 'package:sewistic_app/services/product_services.dart';
import 'package:sewistic_app/shared/card_animations.dart';
import 'package:sewistic_app/shared/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductService productService = ProductService();
  List<Product> _homeProducts;

  @override
  void initState() {
    super.initState();
    _homeProducts = productService.getHomeProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                elevation: Constants.CARD_ELEVATION,
                child: ImagesSlider(),
              ),
              const TitleDivider('Top Picks'),
              _horizontalList(_homeProducts.sublist(0, 4)),
              const TitleDivider('Best Sellers'),
              _horizontalList(_homeProducts.sublist(4, 8)),
              const TitleDivider('Men'),
              _horizontalList(_homeProducts.sublist(8, 12)),
              const TitleDivider('New Arrivals'),
              _horizontalList(_homeProducts.sublist(12, 16)),
              const TitleDivider('Premium'),
              _horizontalList(_homeProducts.sublist(16)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _horizontalList(List<Product> products) {
    return Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              shrinkWrap: false,
              itemBuilder: (context, index) {
                return ProductToDetailsAnimation(
                  openingWidget: ProductDetails(product: products[index]),
                  closedBuilder:
                      (BuildContext context, VoidCallback openContainer) {
                    return ProductCardHome(
                      product: products[index],
                      openContainer: openContainer,
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
