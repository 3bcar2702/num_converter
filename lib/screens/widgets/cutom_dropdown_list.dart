import 'package:flutter/material.dart';
import 'package:num_converter/screens/home_page.dart';

class CustonDropdownList extends StatefulWidget {
  const CustonDropdownList({super.key});
  @override
  _CustonDropdownList createState() => _CustonDropdownList();
}

class _CustonDropdownList extends State<CustonDropdownList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: const Color.fromARGB(255, 118, 129, 146),
        height: 50,
        width: 300,

        child: DropdownButton(
          enableFeedback: true,
          isExpanded: true,
          padding: EdgeInsets.only(left: 12),
          style: TextStyle(color: const Color.fromARGB(255, 67, 55, 55)),
          value: inputSystem,
          items: numSystems,
          onChanged: (String? newValue) {
            setState(() {
              inputSystem = newValue;
            });
          },
          iconEnabledColor: const Color.fromARGB(255, 255, 255, 255),
          dropdownColor: const Color.fromARGB(255, 118, 129, 146),
        ),
      ),
    );
  }
}
