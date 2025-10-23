import 'package:flutter/material.dart';
import 'package:baseify/services/conversion_service.dart';

class PopUpAnswer extends StatelessWidget {
  final String inputValue;
  final String fromSystem;
  final String toSystem;

  const PopUpAnswer({
    super.key,
    required this.inputValue,
    required this.fromSystem,
    required this.toSystem,
  });

  @override
  Widget build(BuildContext context) {
    String result = ConversionService.convert(
      input: inputValue,
      from: fromSystem,
      to: toSystem,
    );

    return AlertDialog(
      title: Text('Conversion Result'),
      content: Text('$fromSystem → $toSystem:\n$result'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close'),
        ),
      ],
    );
  }
}
