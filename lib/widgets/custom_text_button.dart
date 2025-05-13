import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  const CustomTextButton({super.key});
  @override
  _CustomTextButton createState() => _CustomTextButton();
}

class _CustomTextButton extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          Color.fromARGB(119, 4, 153, 252),
        ),
      ),
      child: Text('convert', style: TextStyle(color: Colors.white)),
    );
  }
}
