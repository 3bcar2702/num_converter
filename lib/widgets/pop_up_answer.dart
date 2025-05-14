import 'package:flutter/material.dart';
import 'package:num_converter/services/binary_to_decimal.dart';

class PopUpAnswer extends StatelessWidget {
  final String binaryInput;

  PopUpAnswer({required this.binaryInput});

  @override
  Widget build(BuildContext context) {
    String result = BinaryToDecimal(binaryInput).converter();

    return AlertDialog(
      title: Text('Conversion Result'),
      content: Text('Decimal Representation: $result'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // إغلاق النافذة
          },
          child: Text('Close'),
        ),
      ],
    );
  }
}
