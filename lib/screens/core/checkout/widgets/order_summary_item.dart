import 'package:flutter/material.dart';
import 'package:sewistic_app/models/order/cart_item.dart';

class OrderSummaryItem extends StatelessWidget {
  final CartItem item;

  const OrderSummaryItem({this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.product.name,
                maxLines: 2, style: const TextStyle(color: Colors.black)),
            const SizedBox(
              height: 4,
            ),
            Text(item.designOptions.join(', '),
                style: const TextStyle(color: Colors.grey)),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(item.measurementOption,
                    style: const TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
                Text('Rs.' + item.product.price,
                    style: const TextStyle(
                        color: Colors.pink, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
