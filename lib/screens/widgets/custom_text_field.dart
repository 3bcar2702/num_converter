import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  @override
  const CustomTextField({super.key});
  @override
  _CustomTextField createState() => _CustomTextField();
}

class _CustomTextField extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      color: const Color.fromARGB(255, 118, 129, 146),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: TextField(
          onChanged: (value) {},
          keyboardType: TextInputType.number,
        ),
      ),
    );
  }
}
