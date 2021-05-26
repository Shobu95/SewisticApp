import 'package:flutter/material.dart';
import 'package:sewistic_app/models/order/cart_item.dart';

class OrderSummaryItem extends StatelessWidget {
  CartItem item;

  OrderSummaryItem({this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.product.name,
                maxLines: 2, style: TextStyle(color: Colors.black)),
            SizedBox(
              height: 4,
            ),
            Text(item.designOptions.join(', '),
                style: TextStyle(color: Colors.grey)),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(item.measurementOption,
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
                Text('Rs.' + item.product.price,
                    style: TextStyle(
                        color: Colors.pink, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
