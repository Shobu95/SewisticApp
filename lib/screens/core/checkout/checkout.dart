import 'package:flutter/material.dart';
import 'package:sewistic_app/screens/core/checkout/widgets/my_stepper.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int _selectedIndex;
  String _buttonName = 'Next';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        'Checkout',
        style: TextStyle(color: Colors.black),
      ),
      iconTheme: IconTheme.of(context),
      backgroundColor: Colors.white,
      elevation: 2,
    );
  }

  Widget _body() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: MyStepper(selectedIndex: _selectedIndex),
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            child: _proceedBtn(),
          ),
        ],
      ),
    );
  }

  Widget _proceedBtn() {
    return TextButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _buttonName,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
      onPressed: () {
        setState(() {
          if (_buttonName == 'Place Order') {
            _selectedIndex == 4;
            Navigator.of(context).popUntil((route) => route.isFirst);
          } else {
            _selectedIndex++;
            if (_selectedIndex == 4) _buttonName = 'Place Order';
          }
        });
      },
    );
  }
}
