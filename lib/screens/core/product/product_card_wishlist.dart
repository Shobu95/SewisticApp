import 'package:flutter/material.dart';
import 'package:sewistic_app/models/product/product.dart';
import 'package:sewistic_app/shared/constants.dart';

class ProductCardWishlist extends StatelessWidget {
  Product product;

  final VoidCallback openContainer;

  ProductCardWishlist({this.product, this.openContainer});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: openContainer,
      child: Card(
        elevation: Constants.CARD_ELEVATION,
        child: Container(
          padding: EdgeInsets.all(4),
          height: 150,
          child: Row(
            children: [
              Image.network(
                product.image,
                width: 120,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.close,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.name,
                              maxLines: 2,
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Rs.' + product.price,
                              maxLines: 1,
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
