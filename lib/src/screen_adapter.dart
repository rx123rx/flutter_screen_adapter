import 'package:flutter/widgets.dart';

class ScreenAdapter {
  static double _designScreenWidth;

  static double _designScreenHeight;

  static double _screenWidth;
  static double _screenHeight;
  static double _statusBarHeight;

  static double get screenWidth => _screenWidth;

  static double get screenHeight => _screenHeight;

  static double get statusBarHeight => _statusBarHeight;

  static double get designScreenWidth => _designScreenWidth;

  static double get designScreenHeight => _designScreenHeight;

  static init(BuildContext context, double designScreenWidth,
      double designScreenHeight) {
    assert(context != null);
    assert(designScreenWidth != null && designScreenWidth > 0);
    assert(designScreenHeight != null && designScreenHeight > 0);
    _designScreenWidth = designScreenWidth;
    _designScreenHeight = designScreenHeight;
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    _screenWidth = mediaQueryData.size.width;
    _screenHeight = mediaQueryData.size.height;
    _statusBarHeight = mediaQueryData.padding.top;
  }
}