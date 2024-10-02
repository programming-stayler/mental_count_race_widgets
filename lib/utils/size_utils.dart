import 'dart:math';

import 'package:flutter/material.dart';

class SizeConfig {
  static SizeConfig get instance => _instance;

  SizeConfig._();

  static final SizeConfig _instance = SizeConfig._();

  late MediaQueryData _mediaQueryData;
  late double screenWidth;
  late double screenHeight;
  late double blockSizeHorizontal;
  late double blockSizeVertical;
  late double safeBlockHorizontal;
  late double safeBlockVertical;
  late double profileDrawerWidth;
  late double refHeight;
  late double refWidth;
  late double paddingTop;
  late double paddingBottom;
  late double _safeAreaVertical;
  late double _safeAreaHorizontal;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.shortestSide;
    screenHeight = _mediaQueryData.size.longestSide;
    // designSize
    refHeight = 812;
    // designSize
    refWidth = 375;
    paddingTop = _mediaQueryData.padding.top;
    paddingBottom = _mediaQueryData.padding.bottom;

    if (screenHeight < 1200) {
      blockSizeHorizontal = screenWidth / 100;
      blockSizeVertical = screenHeight / 100;

      _safeAreaHorizontal =
          _mediaQueryData.padding.left + _mediaQueryData.padding.right;
      _safeAreaVertical =
          _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
      safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
      safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
    } else {
      blockSizeHorizontal = screenWidth / 120;
      blockSizeVertical = screenHeight / 120;

      _safeAreaHorizontal =
          _mediaQueryData.padding.left + _mediaQueryData.padding.right;
      _safeAreaVertical =
          _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
      safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 120;
      safeBlockVertical = (screenHeight - _safeAreaVertical) / 120;
    }
  }

  double getWidthRatio(double val) {
    final res = (val / refWidth) * 100;
    final temp = res * blockSizeHorizontal;

    return temp;
  }

  double getHeightRatio(double val) {
    final res = (val / refHeight) * 100;
    final temp = res * blockSizeVertical;
    return temp;
  }

  double getFontRatio(double val) {
    const maxFontRation = 20.0;
    final res = (val / refWidth) * 100;
    var temp = 0.0;
    if (screenWidth < screenHeight) {
      temp = res * safeBlockHorizontal;
    } else {
      temp = res * safeBlockVertical;
    }

    return min(maxFontRation, temp);
  }

  bool get isSmallScreen => screenHeight < 668.0;

  SizedBox hPadding(double padding) => SizedBox(height: padding);

  SizedBox wPadding(double padding) => SizedBox(width: padding);
}

extension SizeExtension on BuildContext {
  Size get screen => MediaQuery.of(this).size;

  EdgeInsets get padding => MediaQuery.of(this).padding;

  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;

  double percentageScreenHeight(double percent) => screen.height * percent;

  double percentageScreenWidth(double percent) => screen.width * percent;
}

extension SizeUtils on num {
  double get toWidth => SizeConfig.instance.getWidthRatio(toDouble());

  double get toHeight => SizeConfig.instance.getHeightRatio(toDouble());

  double get toFont => SizeConfig.instance.getFontRatio(toDouble());
}
