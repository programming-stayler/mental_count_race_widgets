import 'package:flutter/material.dart';

const _colorMinRNDValue = 25.0;
const _colorMaxRNDValue = 85.0;

const complexityColors = [
  Color(0xFFE37965),
  Color(0xFFF3B048),
  Color(0xFF85A14D),
];

extension StringUIStyle on String {
  Color get color {
    return colorFromHex(this);
  }

  double get hue {
    final hash = hashCode.toString();
    final length = hash.length;
    if (length > 7) {
      final num1 = hash[length - 7];
      final num2 = hash[length - 6];
      final num3 = hash[length - 5];
      final res = double.parse('$num1$num2$num3');
      final tmp = res % 360;
      return tmp;
    }
    return 0.0;
  }

  double get saturation {
    final hash = hashCode.toString();
    final length = hash.length;
    if (length > 4) {
      final num1 = hash[length - 3];
      final num2 = hash[length - 4];
      final res = double.parse('$num1$num2');
      final tmp =
          res % (_colorMaxRNDValue - _colorMinRNDValue) + _colorMinRNDValue;
      return tmp / 100;
    }
    return 0.0;
  }

  double get lightness {
    final hash = hashCode.toString();
    final length = hash.length;
    if (length > 2) {
      final num1 = hash[length - 2];
      final num2 = hash[length - 1];
      final res = double.parse('$num1$num2');
      final tmp =
          res % (_colorMaxRNDValue - _colorMinRNDValue) + _colorMinRNDValue;
      return tmp / 100;
    }
    return 0.0;
  }
}

Color colorFromHex(String hexString) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}

Color colorFromName(String name) {
  final hue = name.hue;
  final saturation = name.saturation;
  final lightness = name.lightness;
  return HSLColor.fromAHSL(
    1.0,
    hue,
    saturation,
    lightness,
  ).toColor();
}

Color? lerpGradient(List<Color> colors, List<double> stops, double t) {
  for (var s = 0; s < stops.length - 1; s++) {
    final leftStop = stops[s];
    final rightStop = stops[s + 1];
    final leftColor = colors[s];
    final rightColor = colors[s + 1];
    if (t <= leftStop) {
      return leftColor;
    } else if (t < rightStop) {
      final sectionT = (t - leftStop) / (rightStop - leftStop);
      return Color.lerp(leftColor, rightColor, sectionT);
    }
  }
  return colors.last;
}