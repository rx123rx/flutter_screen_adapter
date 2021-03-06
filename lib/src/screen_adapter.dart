import 'package:flutter/widgets.dart';

class ScreenAdapter {
  static late double _designScreenWidth;

  static late double _designScreenHeight;

  static late double _screenWidth;
  static late double _screenHeight;
  static late double _statusBarHeight;

  static double get screenWidth => _screenWidth;

  static double get screenHeight => _screenHeight;

  static double get statusBarHeight => _statusBarHeight;

  static double get designScreenWidth => _designScreenWidth;

  static double get designScreenHeight => _designScreenHeight;

  static init(BuildContext context, double designScreenWidth,
      double designScreenHeight) {
    assert(designScreenWidth > 0);
    assert(designScreenHeight > 0);
    _designScreenWidth = designScreenWidth;
    _designScreenHeight = designScreenHeight;
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    _screenWidth = mediaQueryData.size.width;
    _screenHeight = mediaQueryData.size.height;
    _statusBarHeight = mediaQueryData.padding.top;
  }
}