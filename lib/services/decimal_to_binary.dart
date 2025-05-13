class DecimalToBinary {
  int decimal;
  String binary = '';

  String converter() {
    while (decimal > 0) {
      binary = (decimal % 2).toString() + binary;
      decimal = decimal ~/ 2;
    }
    return binary;
  }

  DecimalToBinary(this.decimal);
}
