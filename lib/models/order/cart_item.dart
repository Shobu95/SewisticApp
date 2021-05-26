import 'package:sewistic_app/models/product/product.dart';

class CartItem {
  Product _product;
  List<String> _designOptions;
  String _measurementOption;
  bool _isSelected;

  CartItem(this._product, this._designOptions, this._measurementOption,
      this._isSelected);

  bool get isSelected => _isSelected;

  set isSelected(bool value) {
    _isSelected = value;
  }

  String get measurementOption => _measurementOption;

  set measurementOption(String value) {
    _measurementOption = value;
  }

  List<String> get designOptions => _designOptions;

  set designOptions(List<String> value) {
    _designOptions = value;
  }

  Product get product => _product;

  set product(Product value) {
    _product = value;
  }
}
