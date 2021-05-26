import 'package:sewistic_app/models/order/design_type.dart';

class Product {
  String _name;
  String _price;
  String _image;
  String _description_short;
  List<DesignType> _designTypes;

  Product(this._name, this._price, this._image, this._description_short,
      this._designTypes);

  // ignore: unnecessary_getters_setters
  String get image => _image;

  set image(String value) {
    _image = value;
  }

  String get price => _price;

  set price(String value) {
    _price = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get description_short => _description_short;

  set description_short(String value) {
    _description_short = value;
  }

  List<DesignType> get designTypes => _designTypes;

  set designTypes(List<DesignType> value) {
    _designTypes = value;
  }
}
