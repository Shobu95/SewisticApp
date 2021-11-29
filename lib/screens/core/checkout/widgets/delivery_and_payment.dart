import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeliveryAndPayment extends StatefulWidget {
  @override
  _DeliveryAndPaymentState createState() => _DeliveryAndPaymentState();
}

class _DeliveryAndPaymentState extends State<DeliveryAndPayment> {
  final int _deliveryMethod = 1;
  final int _free = 1;

  int _paymentMethod = 1;
  final int _cashOnDelivery = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Shipping and Payment ',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 28,
          ),
          _deliveryMethods(),
          const SizedBox(
            height: 18,
          ),
          _paymentMethods(),
        ],
      ),
    );
  }

  Widget _deliveryMethods() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shipping Method',
            style: Theme.of(context).textTheme.headline3,
          ),
          Row(
            children: [
              Radio(
                  value: _free,
                  groupValue: _deliveryMethod,
                  onChanged: (value) {
                    setState(() {
                      _paymentMethod = value;
                    });
                  }),
              const Text("Free Pickup and Delivery")
            ],
          )
        ],
      ),
    );
  }

  Widget _paymentMethods() {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Method',
            style: Theme.of(context).textTheme.headline3,
          ),
          Row(
            children: [
              Radio(
                  value: _cashOnDelivery,
                  groupValue: _paymentMethod,
                  onChanged: (value) {
                    setState(() {
                      _paymentMethod = value;
                    });
                  }),
              const Text("Cash on Delivery")
            ],
          )
        ],
      ),
    );
  }
}
