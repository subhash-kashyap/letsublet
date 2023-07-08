import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#7d7d7d');

  static Color gray90002 = fromHex('#1e1e1e');

  static Color blueGray200 = fromHex('#99c6cf');

  static Color gray500 = fromHex('#a8a8a8');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color gray60001 = fromHex('#79747e');

  static Color blueGray400 = fromHex('#888888');

  static Color gray800 = fromHex('#49454f');

  static Color gray900 = fromHex('#161616');

  static Color gray90001 = fromHex('#1c1b1f');

  static Color amber300 = fromHex('#f5df4d');

  static Color black9003f = fromHex('#3f000000');

  static Color black9000c = fromHex('#0c000000');

  static Color gray300 = fromHex('#e1e1e1');

  static Color gray50 = fromHex('#fdfbfb');

  static Color gray100 = fromHex('#f5f5f5');

  static Color yellow600 = fromHex('#f2ca3b');

  static Color black900 = fromHex('#000000');

  static Color blueGray900 = fromHex('#2c3131');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
