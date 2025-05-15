import 'package:flutter/material.dart';
import 'package:num_converter/widgets/custom_text_button.dart';
import 'package:num_converter/widgets/custom_text_field.dart';
import 'package:num_converter/widgets/cutom_dropdown_list.dart';
import 'package:num_converter/widgets/my_app_bar.dart';

List<DropdownMenuItem<String>> numSystems = [
  DropdownMenuItem(child: Text("binary"), value: "binary"),
  DropdownMenuItem(child: Text("decimal"), value: "decimal"),
  DropdownMenuItem(child: Text("hexa-decimal"), value: "hexa-decimal"),
  DropdownMenuItem(child: Text("octal"), value: "octal"),
];

String? inputSystem;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _inputValue = '';
  String? _inputSystem;
  String? _outputSystem;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/appBg.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: myAppBar(),
          body: Column(
            children: [
              Spacer(),
              Text(
                'choose the number system',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 10),
              CustonDropdownList(
                value: _inputSystem,
                onChanged: (value) {
                  setState(() {
                    _inputSystem = value;
                  });
                },
              ),

              SizedBox(height: 10),
              Text(
                'input the number',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 10),
              CustomTextField(
                onChanged: (value) {
                  setState(() {
                    _inputValue = value;
                  });
                },
              ),
              SizedBox(height: 10),
              Text(
                'choose the number system',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 10),
              CustonDropdownList(
                value: _outputSystem,
                onChanged: (value) {
                  setState(() {
                    _outputSystem = value;
                  });
                },
              ),
              SizedBox(height: 10),
              CustomTextButton(
                inputValue: _inputValue,
                fromSystem: _inputSystem,
                toSystem: _outputSystem,
                isEnabled:
                    _inputValue.isNotEmpty &&
                    _inputSystem != null &&
                    _outputSystem != null,
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
