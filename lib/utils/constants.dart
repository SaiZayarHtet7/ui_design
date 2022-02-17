import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Constants {
  static Color primaryColor = HexColor("#FF7C6F");
  static Color secondaryColor = HexColor("#9AACBE");

  static TextStyle titleStyle = const TextStyle(
      fontFamily: "EncodeSans",
      fontSize: 26,
      fontWeight: FontWeight.w700,
      color: Colors.black);

  static TextStyle subTitle = const TextStyle(
      fontFamily: "EncodeSans",
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.black);

  static TextStyle normalStyle = const TextStyle(
      fontFamily: "EncodeSans",
      fontWeight: FontWeight.w300,
      fontSize: 13,
      color: Colors.black);

  static Color indicatorColor = const Color.fromRGBO(54, 54, 54, 0.9);
}
