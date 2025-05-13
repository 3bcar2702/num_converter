import 'package:flutter/material.dart';

AppBar myAppBar() {
  return AppBar(
    backgroundColor: Color.fromARGB(119, 4, 153, 252),
    title: Text("My Num converter app", style: TextStyle(color: Colors.white)),
    leading: Image.asset(
      "assets/images/image_fx-removebg-preview_upscayl_5x_upscayl-standard-4x.png",
      height: 200,
      width: 200,
    ),
  );
}
