import 'package:flutter/material.dart';

const primaryColor = Color.fromARGB(255, 126, 35, 224);
const secondaryColor = Color.fromARGB(255, 76, 68, 82);
const appBarColor = Color.fromARGB(255, 255, 236, 255);

List getDimensions(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return [width, height];
}
