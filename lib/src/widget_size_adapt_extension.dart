import 'package:flutter_screen_adapter/src/screen_adapter.dart';

extension WidgetSizeAdaptExtension on num {
  double get adaptToScreenWidth =>
      ScreenAdapter.screenWidth * (this / ScreenAdapter.designScreenWidth);

  double get adaptToScreenHeight =>
      ScreenAdapter.screenHeight * (this / ScreenAdapter.designScreenHeight);
}
