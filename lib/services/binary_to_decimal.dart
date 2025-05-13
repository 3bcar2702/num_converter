import 'dart:math';

class BinaryToDecimal {
  String binary;
  String decimal = '';

  String converter() {
    int result = 0;

    for (var i = binary.length - 1; i >= 0; i--) {
      result += int.parse(binary[i]) * pow(2, binary.length - i - 1).toInt();
    }
    decimal = result.toString();
    return decimal;
  }

  BinaryToDecimal(this.binary);
}
