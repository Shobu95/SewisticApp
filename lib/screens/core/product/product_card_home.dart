import 'package:flutter/material.dart';
import 'package:sewistic_app/models/product/product.dart';
import 'package:sewistic_app/shared/constants.dart';

class ProductCardHome extends StatelessWidget {
  final Product product;
  final VoidCallback openContainer;

  const ProductCardHome({this.product, this.openContainer});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: openContainer,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        margin: EdgeInsets.all(6),
        elevation: Constants.CARD_ELEVATION,
        child: Container(
          width: 150,
          child: GridTile(
            footer: Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(4),
                ),
              ),
              color: Colors.transparent,
              clipBehavior: Clip.antiAlias,
              child: GridTileBar(
                backgroundColor: Colors.black45,
                title: Text(product.name),
                subtitle: Text('Rs.' + product.price),
              ),
            ),
            child: Image(
              image: NetworkImage(product.image),
            ),
          ),
        ),
      ),
    );
  }
}
