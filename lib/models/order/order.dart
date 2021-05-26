import 'package:flutter/material.dart';

class Order {
  String _orderId;
  String _date;
  String _productName;
  int _noOfProducts;
  String _totalAmount;
  String _status;
  Color _statusColor;

  Order(this._orderId, this._date, this._productName, this._noOfProducts,
      this._totalAmount, this._status, this._statusColor);

  Color get statusColor => _statusColor;

  set statusColor(Color value) {
    _statusColor = value;
  }

  String get status => _status;

  set status(String value) {
    _status = value;
  }

  String get totalAmount => _totalAmount;

  set totalAmount(String value) {
    _totalAmount = value;
  }

  int get noOfProducts => _noOfProducts;

  set noOfProducts(int value) {
    _noOfProducts = value;
  }

  String get productName => _productName;

  set productName(String value) {
    _productName = value;
  }

  String get date => _date;

  set date(String value) {
    _date = value;
  }

  String get orderId => _orderId;

  set orderId(String value) {
    _orderId = value;
  }
}
