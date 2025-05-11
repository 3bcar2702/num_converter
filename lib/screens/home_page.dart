import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String decimal = '0', hexa = '0', octal = '0', binary = '0';
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
          appBar: AppBar(
            backgroundColor: Color.fromARGB(119, 4, 153, 252),
            title: Text(
              "My Num converter app",
              style: TextStyle(color: Colors.white),
            ),
            leading: Image.asset(
              "assets/images/image_fx-removebg-preview_upscayl_5x_upscayl-standard-4x.png",
              height: 200,
              width: 200,
            ),
          ),
        ),
      ],
    );
  }
}
