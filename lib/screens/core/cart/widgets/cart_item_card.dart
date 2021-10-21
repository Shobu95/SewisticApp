import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sewistic_app/models/order/cart_item.dart';
import 'package:sewistic_app/screens/core/cart/cart.dart';
import 'package:sewistic_app/shared/constants.dart';

class CartItemCard extends StatefulWidget {
  final CartItem cartItem;
  final CartState parentState;
  const CartItemCard(this.cartItem, this.parentState, {Key key}) : super(key: key);

  @override
  _CartItemCardState createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  CartItem _cartItem;
  CartState _parentState;

  @override
  void initState() {
    super.initState();
    _cartItem = widget.cartItem;
    _parentState = widget.parentState;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Constants.CARD_ELEVATION,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        child: Row(
          children: [
            Container(
                margin: const EdgeInsets.only(right: 6),
                width: 20,
                child: Checkbox(
                  value: _cartItem.isSelected,
                  onChanged: (isSelected) {
                    setState(() {
                      _cartItem.isSelected = isSelected;
                      this._parentState.getTotalItemsAndPrice();
                    });
                  },
                )),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.all(
                  Radius.circular(2),
                ),
              ),
              child: Image.network(
                widget.cartItem.product.image,
                width: 100,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.cartItem.product.name,
                      maxLines: 2,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      widget.cartItem.designOptions.join(', '),
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      widget.cartItem.measurementOption,
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Rs.' + widget.cartItem.product.price,
                          style: const TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    )
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
