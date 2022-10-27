import 'package:flutter/material.dart';

class SizeConfig {
 late final MediaQueryData _mediaQueryData;
 late final double screenWidth;
 late final double screenHeight;
 late final double blockSizeHorizontal;
 late final double blockSizeVertical;

 late final double _safeAreaHorizontal;
 late final double _safeAreaVertical;
 late final double safeBlockHorizontal;
 late final double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }


}

class Dimens {
  // margins
  static const double margin = 16.0;
  static const double marginLarge = 18.0;
  static const double marginExtraLarge = 22.0;
  static const double marginSmall = 12.0;
  static const double largeSpace = 35.0;

// font sizes
  static const double fontExtraSmall = 10.0;
  static const double fontSmall = 12.0;
  static const double fontMedium = 14.0;
  static const double fontNormal = 16.0;
  static const double fontLarge = 21.0;
  static const double fontExtraLarge = 25.0;

// padding
  static const double padding2px = 2.0;
  static const double smallPadding = 8.0;
  static const double extraSmallPadding = 5.0;
  static const double mediumPadding = 12.0;
  static const double padding = 16.0;

// elevation
  static const double elevationNormal = 6.0;

  //TextFiled
  static const double borderRadius = 10.0;

  // Extra
  static const double roundBtRadius = 20.0;
}
