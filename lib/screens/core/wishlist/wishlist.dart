import 'package:flutter/material.dart';
import 'package:sewistic_app/models/product/product.dart';
import 'package:sewistic_app/screens/core/product/product_card_wishlist.dart';
import 'package:sewistic_app/screens/core/product/product_details/product_details.dart';
import 'package:sewistic_app/services/product_services.dart';
import 'package:sewistic_app/shared/card_animations.dart';

class Wishlist extends StatefulWidget {
  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  ProductService productService = ProductService();
  List<Product> wishlist;

  @override
  void initState() {
    super.initState();
    wishlist = productService.getWishList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _wishlistProducts(wishlist),
    );
  }

  ListView _wishlistProducts(List<Product> wishlist) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: wishlist.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return ProductToDetailsAnimation(
          openingWidget: ProductDetails(product: wishlist[index]),
          closedBuilder: (BuildContext context, VoidCallback openContainer) {
            return ProductCardWishlist(
              product: wishlist[index],
              openContainer: openContainer,
            );
          },
        );
      },
    );
  }
}
