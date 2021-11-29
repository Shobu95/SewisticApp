import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sewistic_app/models/product/product.dart';
import 'package:sewistic_app/screens/core/product/product_card_search.dart';
import 'package:sewistic_app/screens/core/product/product_details/product_details.dart';
import 'package:sewistic_app/screens/core/search/widgets/category_drawer.dart';
import 'package:sewistic_app/screens/core/search/widgets/search_bar.dart';
import 'package:sewistic_app/services/product_services.dart';
import 'package:sewistic_app/shared/card_animations.dart';

GlobalKey<ScaffoldState> _scaffoldKey;

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  ProductService productService = ProductService();
  List<Product> _products;

  @override
  void initState() {
    super.initState();
    _products = productService.getHomeProducts();
    _products.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: CategoryDrawer(),
      endDrawerEnableOpenDragGesture: false,
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
              child: SearchBar(_scaffoldKey),
            ),
            Expanded(
              flex: 1,
              child: RefreshIndicator(
                onRefresh: _getProducts,
                child: _productsGridView(_products),
              ),
            ),
          ],
        ),
      ),
    );
  }

  GridView _productsGridView(List<Product> products) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(8.0),
      childAspectRatio: 1 / 1.52,
      children: List.generate(
        products.length,
        (index) {
          return ProductToDetailsAnimation(
            openingWidget: ProductDetails(product: products[index]),
            closedBuilder: (BuildContext context, VoidCallback openContainer) {
              return ProductCardSearch(
                product: products[index],
                openContainer: openContainer,
              );
            },
          );
        },
      ),
    );
  }

  Future<void> _getProducts() async {
    return await Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _products = productService.getHomeProducts();
        _products.shuffle();
      });
    });
  }
}
