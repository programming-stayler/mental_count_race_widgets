part of 'container_style.dart';

extension AlignmentUIStyleUtils on AlignmentUIStyle {
  AlignmentGeometry get alignment {
    return Alignment(x, y);
  }
}

extension OffsetUIStyleUtils on OffsetUIStyle {
  Offset get offset {
    return Offset(dx, dy);
  }
}

extension EdgeInsetsUIStyleUtils on EdgeInsetsUIStyle {
  EdgeInsets get edgeInsets {
    return EdgeInsets.only(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
    );
  }
}

extension GradientUIStyleUtils on GradientUIStyle {
  Gradient get gradient {
    return map(
      linear: (linear) => LinearGradient(colors: colors, stops: stops),
      radial: (radial) => RadialGradient(colors: colors, stops: stops),
      sweep: (sweep) => SweepGradient(colors: colors, stops: stops),
    );
  }

  List<Color> get colors {
    return [...colorsHex.map(colorFromHex)];
  }
}

extension BorderSideUIStyleUtils on BorderSideUIStyle {
  BorderSide get borderSide {
    return BorderSide(
      color: colorFromHex(colorHex),
      width: width,
      style: style,
    );
  }
}

extension BorderUIStyleUtils on BorderUIStyle {
  Border get border {
    return Border(
      left: left?.borderSide ?? BorderSide.none,
      top: top?.borderSide ?? BorderSide.none,
      right: right?.borderSide ?? BorderSide.none,
      bottom: bottom?.borderSide ?? BorderSide.none,
    );
  }
}

extension BorderRadiusUIStyleUtils on BorderRadiusUIStyle {
  BorderRadius? get borderRadius {
    return map(
      circular: (circular) => BorderRadius.circular(
        circular.radius,
      ),
      only: (only) => BorderRadius.only(
        topLeft: Radius.circular(only.topLeft),
        topRight: Radius.circular(only.topRight),
        bottomLeft: Radius.circular(only.bottomLeft),
        bottomRight: Radius.circular(only.bottomRight),
      ),
    );
  }
}

extension BoxShadowUIStyleUtils on BoxShadowUIStyle {
  BoxShadow get boxShadow {
    return BoxShadow(
      color: colorFromHex(colorHex),
      offset: offset.offset,
      blurRadius: blurRadius,
      spreadRadius: spreadRadius,
      blurStyle: blurStyle,
    );
  }
}

extension BoxDecorationUIStyleUtils on BoxDecorationUIStyle {
  BoxDecoration get boxDecoration {
    return BoxDecoration(
      color: colorHex != null ? colorFromHex(colorHex!) : null,
      image: imagePath != null
          ? DecorationImage(image: AssetImage(imagePath!))
          : null,
      border: border?.border,
      boxShadow: [...boxShadow.map((b) => b.boxShadow)],
      gradient: gradient?.gradient,
      borderRadius: borderRadius?.borderRadius,
    );
  }
}
