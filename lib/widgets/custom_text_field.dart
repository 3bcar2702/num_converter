import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final Function(String)? onChanged;

  const CustomTextField({super.key, this.onChanged});

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
          onChanged: widget.onChanged,
          keyboardType: TextInputType.number,
        ),
      ),
    );
  }
}
