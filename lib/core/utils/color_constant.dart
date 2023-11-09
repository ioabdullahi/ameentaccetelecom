import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black900B2 = fromHex('#b2000000');

  static Color indigo900D8 = fromHex('#d8073a85');

  static Color blueA700 = fromHex('#2761ff');

  static Color gray80026 = fromHex('#264b4b4b');

  static Color black9003f = fromHex('#3f000000');

  static Color greenA200 = fromHex('#69eba5');

  static Color black90087 = fromHex('#87000000');

  static Color black900 = fromHex('#000000');

  static Color black90060 = fromHex('#60000000');

  static Color black9008701 = fromHex('#87010100');

  static Color blueGray6007a = fromHex('#7a4b6680');

  static Color gray400 = fromHex('#c9c9c9');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color black9002b = fromHex('#2b000000');

  static Color gray500 = fromHex('#adadad');

  static Color blueA70019 = fromHex('#192761ff');

  static Color blueGray400 = fromHex('#888888');

  static Color gray800 = fromHex('#4b4b4b');

  static Color blueGray600 = fromHex('#4a667f');

  static Color redA200 = fromHex('#fb5b51');

  static Color blue504f = fromHex('#4fecf4ff');

  static Color gray200 = fromHex('#eaeaea');

  static Color blue50 = fromHex('#ecf4ff');

  static Color gray100 = fromHex('#f4f4f4');

  static Color black90099 = fromHex('#99000000');

  static Color indigoA700 = fromHex('#0042fc');

  static Color whiteA70001 = fromHex('#fefefe');

  static Color indigo900 = fromHex('#073984');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
