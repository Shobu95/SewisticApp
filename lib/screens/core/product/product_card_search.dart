import 'package:flutter/material.dart';
import 'package:sewistic_app/models/product/product.dart';
import 'package:sewistic_app/shared/constants.dart';

class ProductCardSearch extends StatelessWidget {
  final Product product;
  final VoidCallback openContainer;

  const ProductCardSearch({this.product, this.openContainer});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: openContainer,
      child: Card(
        elevation: Constants.CARD_ELEVATION,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.network(product.image),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.only(bottom: 6, left: 8, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      product.name,
                      maxLines: 2,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Rs.' + product.price,
                      maxLines: 1,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
