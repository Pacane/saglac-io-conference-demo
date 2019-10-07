import 'package:flutter/material.dart';

const String FontNameDefault = 'Poppins';

const MaterialColor customIndigo = MaterialColor(0xFF161843, {
  50: Color(0xffe3e3e8),
  100: Color(0xffb9bac7),
  200: Color(0xff8b8ca1),
  300: Color(0xff5c5d7b),
  400: Color(0xff393b5f),
  500: Color(0xff161843),
  600: Color(0xff13153d),
  700: Color(0xff101134),
  800: Color(0xff0c0e2c),
  900: Color(0xff06081e),
});

const MaterialColor customPink = MaterialColor(0xFFd75ba1, {
  50: Color(0xfffaebf4),
  100: Color(0xfff3cee3),
  200: Color(0xffebadd0),
  300: Color(0xffe38cbd),
  400: Color(0xffdd74af),
  500: Color(0xffd75ba1),
  600: Color(0xffd35399),
  700: Color(0xffcd498f),
  800: Color(0xffc74085),
  900: Color(0xffbe2f74),
});

const TileHeaderStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w700,
  fontSize: 18.0,
  color: customPink,
);
