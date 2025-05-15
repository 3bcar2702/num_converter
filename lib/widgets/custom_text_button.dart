import 'package:flutter/material.dart';
import 'package:num_converter/widgets/pop_up_answer.dart';

class CustomTextButton extends StatelessWidget {
  final String inputValue;
  final String? fromSystem;
  final String? toSystem;
  final bool isEnabled;

  const CustomTextButton({
    super.key,
    required this.inputValue,
    required this.fromSystem,
    required this.toSystem,
    required this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:
          isEnabled
              ? () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return PopUpAnswer(
                      fromSystem: fromSystem!,
                      toSystem: toSystem!,
                      inputValue: inputValue,
                    );
                  },
                );
              }
              : null, // ده بيخليه disabled لو isEnabled = false
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          isEnabled
              ? const Color.fromARGB(119, 4, 153, 252)
              : const Color.fromARGB(80, 150, 150, 150),
        ),
      ),
      child: Text(
        'convert',
        style: TextStyle(color: isEnabled ? Colors.white : Colors.grey[300]),
      ),
    );
  }
}
