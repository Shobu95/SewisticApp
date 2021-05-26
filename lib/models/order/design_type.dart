class DesignType {
  String _typeName;
  List<DesignOption> _designOptions;

  DesignType(this._typeName, this._designOptions);

  String get typeName => _typeName;

  set typeName(String value) {
    _typeName = value;
  }

  List<DesignOption> get designOptions => _designOptions;

  set designOptions(List<DesignOption> value) {
    _designOptions = value;
  }
}

class DesignOption {
  String _optionImage;
  String _optionName;

  DesignOption(this._optionImage, this._optionName);

  String get optionName => _optionName;

  set optionName(String value) {
    _optionName = value;
  }

  String get optionImage => _optionImage;

  set optionImage(String value) {
    _optionImage = value;
  }
}
