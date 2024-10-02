part of 'text_style.dart';

extension FontWeightUIStyleUtils on FontWeightUIStyle {
  FontWeight get fontWeight {
    switch (this) {
      case FontWeightUIStyle.w100:
        return FontWeight.w100;
      case FontWeightUIStyle.w200:
        return FontWeight.w200;
      case FontWeightUIStyle.w300:
        return FontWeight.w300;
      case FontWeightUIStyle.w400:
        return FontWeight.w400;
      case FontWeightUIStyle.w500:
        return FontWeight.w500;
      case FontWeightUIStyle.w600:
        return FontWeight.w600;
      case FontWeightUIStyle.w700:
        return FontWeight.w700;
      case FontWeightUIStyle.w800:
        return FontWeight.w800;
      case FontWeightUIStyle.w900:
        return FontWeight.w900;
    }
  }
}

extension TextDecorationUIStyleUtils on TextDecorationUIStyle {
  TextDecoration get textDecoration {
    return map(
      none: (none) => TextDecoration.none,
      underline: (underline) => TextDecoration.underline,
      overline: (overline) => TextDecoration.overline,
      lineThrough: (lineThrough) => TextDecoration.lineThrough,
    );
  }
}

extension TextUIStyleUtils on TextUIStyle {
  TextStyle get textStyle {
    return TextStyle(
      fontFamily: fontFamily,
      color: colorHex?.color,
      backgroundColor: backgroundColorHex?.color,
      fontSize: fontSize,
      fontWeight: fontWeight?.fontWeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      leadingDistribution: leadingDistribution,
      decoration: textDecoration?.textDecoration,
    );
  }

  TextUIStyle get hint {
    return copyWith(fontSize: 10);
  }

  TextUIStyle get description {
    return copyWith(fontSize: 12);
  }

  TextUIStyle get subtitle {
    return copyWith(fontSize: 14);
  }

  TextUIStyle get simple {
    return copyWith(fontSize: 16);
  }

  TextUIStyle get buttonTitle {
    return copyWith(fontSize: 18);
  }

  TextUIStyle get tileTitle {
    return copyWith(fontSize: 20);
  }

  TextUIStyle get numberTitle {
    return copyWith(fontSize: 24);
  }

  TextUIStyle get pageTitle {
    return copyWith(fontSize: 36);
  }

  TextUIStyle get formTitle {
    return copyWith(fontSize: 40);
  }

  TextUIStyle get profile {
    return copyWith(fontSize: 52);
  }
}
