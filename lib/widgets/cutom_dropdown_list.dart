import 'package:flutter/material.dart';
import 'package:baseify/screens/home_page.dart';

class CustonDropdownList extends StatefulWidget {
  final String? value;
  final void Function(String?) onChanged;

  const CustonDropdownList({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  _CustonDropdownListState createState() => _CustonDropdownListState();
}

class _CustonDropdownListState extends State<CustonDropdownList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: const Color.fromARGB(255, 118, 129, 146),
        height: 50,
        width: 300,
        child: DropdownButton<String>(
          isExpanded: true,
          padding: const EdgeInsets.only(left: 12),
          style: const TextStyle(color: Color.fromARGB(255, 67, 55, 55)),
          value: widget.value,
          items: numSystems,
          onChanged: widget.onChanged,
          iconEnabledColor: const Color.fromARGB(255, 255, 255, 255),
          dropdownColor: const Color.fromARGB(255, 118, 129, 146),
        ),
      ),
    );
  }
}
