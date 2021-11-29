import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sewistic_app/models/order/cart_item.dart';
import 'package:sewistic_app/screens/core/checkout/widgets/order_summary_item.dart';
import 'package:sewistic_app/services/cart_items_services.dart';

class OrderSummary extends StatefulWidget {
  @override
  _OrderSummaryState createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  CartItemsServices _cartItemsServices;
  List<CartItem> _cartItems;

  @override
  void initState() {
    _cartItemsServices = CartItemsServices();
    _cartItems = _cartItemsServices.getCartItems();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Order Summary',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 28,
          ),
          Container(
            child: _orderSummaryItems(),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Divider(
              thickness: 1,
              indent: 10,
              endIndent: 10,
              color: Colors.black,
            ),
          ),
          _orderBillDetails(),
          const Padding(
            padding: EdgeInsets.only(bottom: 6, top: 6),
            child: Divider(
              thickness: 1,
              indent: 10,
              endIndent: 10,
              color: Colors.black,
            ),
          ),
          _total(),
          const Padding(
            padding: EdgeInsets.only(bottom: 2, top: 2),
            child: Divider(
              thickness: 1,
              indent: 10,
              endIndent: 10,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  ListView _orderSummaryItems() {
    return ListView.builder(
      itemCount: _cartItems.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return OrderSummaryItem(
          item: _cartItems[index],
        );
      },
    );
  }

  Widget _orderBillDetails() {
    return Container(
      child: Column(
        children: [
          _subtotal(),
          _discount(),
          _delivery(),
          _paymentMethod(),
        ],
      ),
    );
  }

  Widget _subtotal() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Subtotal (5 items)',
            style: TextStyle(color: Colors.grey),
          ),
          const Text(
            'Rs.9199',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _discount() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Discount',
            style: TextStyle(color: Colors.grey),
          ),
          const Text(
            '- Rs.100',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _delivery() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Pickup and Delivery',
            style: TextStyle(color: Colors.grey),
          ),
          const Text('Free',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _paymentMethod() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Payment Method',
            style: TextStyle(color: Colors.grey),
          ),
          const Text('Cash on Delivery',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _total() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Total',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const Text(
            'Rs.9099',
            style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
