class ConversionService {
  static String convert({
    required String input,
    required String from,
    required String to,
  }) {
    int decimalValue;

    switch (from) {
      case 'binary':
        decimalValue = int.parse(input, radix: 2);
        break;
      case 'octal':
        decimalValue = int.parse(input, radix: 8);
        break;
      case 'decimal':
        decimalValue = int.parse(input);
        break;
      case 'hexa-decimal':
        decimalValue = int.parse(input, radix: 16);
        break;
      default:
        return 'Invalid from-system';
    }

    switch (to) {
      case 'binary':
        return decimalValue.toRadixString(2);
      case 'octal':
        return decimalValue.toRadixString(8);
      case 'decimal':
        return decimalValue.toString();
      case 'hexa-decimal':
        return decimalValue.toRadixString(16).toUpperCase();
      default:
        return 'Invalid to-system';
    }
  }
}
