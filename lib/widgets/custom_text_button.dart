import 'package:flutter/material.dart';
import 'package:num_converter/widgets/pop_up_answer.dart';

class CustomTextButton extends StatefulWidget {
  const CustomTextButton({super.key});

  @override
  _CustomTextButton createState() => _CustomTextButton();
}

class _CustomTextButton extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // هنا بنعرض الـ pop-up لما تضغط
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return PopUpAnswer(
              binaryInput: '10',
            ); // المثال ده بيحول "10" لبيناري
          },
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Color.fromARGB(119, 4, 153, 252),
        ),
      ),
      child: Text('convert', style: TextStyle(color: Colors.white)),
    );
  }
}
