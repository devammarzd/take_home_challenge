import 'package:flutter/cupertino.dart';

double sizeHeight(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  return height;
}

double sizeWidth(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  return width;
}