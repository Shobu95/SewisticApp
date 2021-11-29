import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sewistic_app/models/order/cart_item.dart';
import 'package:sewistic_app/screens/core/cart/widgets/cart_item_card.dart';
import 'package:sewistic_app/screens/core/checkout/checkout.dart';
import 'package:sewistic_app/services/cart_items_services.dart';

class Cart extends StatefulWidget {
  @override
  CartState createState() => CartState();
}

class CartState extends State<Cart> {
  CartItemsServices _cartItemsServices;
  List<CartItem> _cartItems;
  int _totalPrice = 0;
  int _totalItems = 0;
  bool noItemSelected;
  String _couponCode = 'Click to Add';

  @override
  void initState() {
    super.initState();
    _cartItemsServices = CartItemsServices();
    _cartItems = _cartItemsServices.getCartItems();
    noItemSelected = false;
    getTotalItemsAndPrice();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBar(), body: _body());
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text(
        'My Cart',
        style: TextStyle(color: Colors.black),
      ),
      iconTheme: IconTheme.of(context),
      backgroundColor: Colors.white,
      elevation: 2,
    );
  }

  Widget _body() {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: _cartItemList(),
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                _voucherCode(),
                _totalPriceArea(),
                _checkoutBtn(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _cartItemList() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: _cartItems.map(
          (item) {
            return CartItemCard(item, this);
          },
        ).toList(),
      ),
    );
  }

  Widget _voucherCode() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Coupon Code',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          InkWell(
              child: Text(
                _couponCode,
                style: const TextStyle(color: Colors.green),
              ),
              onTap: () => _showDialog()),
        ],
      ),
    );
  }

  Widget _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)), //this right here
            child: SizedBox(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(8),
                          border: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4.0)),
                            borderSide: BorderSide(color: Colors.grey[700]),
                          ),
                          hintText: 'Enter Voucher Code'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                      height: 45,
                      minWidth: double.infinity,
                      color: Colors.pink,
                      child: const Text(
                        'Enter',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () {
                        setState(() {
                          _couponCode = '20% Off';
                        });
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget _totalPriceArea() {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 14, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total (' + _totalItems.toString() + ' items)',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Rs.' + _totalPrice.toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _checkoutBtn(BuildContext context) {
    return FlatButton(
      height: 45,
      color: Colors.pink,
      disabledColor: Colors.pink[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Checkout',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 16,
          ),
        ],
      ),
      onPressed: noItemSelected
          ? null
          : () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Checkout(),
                ),
              ),
    );
  }

  Widget getTotalItemsAndPrice() {
    setState(() {
      _totalPrice = 0;
      _totalItems = 0;

      for (int i = 0; i < _cartItems.length; i++) {
        if (_cartItems[i].isSelected == true) {
          _totalPrice += int.parse(_cartItems[i].product.price);
          _totalItems += 1;
        }
      }
      _totalItems == 0 ? noItemSelected = true : noItemSelected = false;
    });
  }
}
