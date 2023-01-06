import 'package:shared_preferences/shared_preferences.dart';

class SharedColor {
  final String colorKey = "defaultColor";

  Future<int> getColorIndex() async {
    final colorIntstance = await SharedPreferences.getInstance();
    final int colorIndex = colorIntstance.getInt(colorKey) ?? 0;

    return colorIndex;
  }

  Future<bool> setColorIndex(int defaultColorIndex) async {
    final colorIntstance = await SharedPreferences.getInstance();

    await colorIntstance.setInt(colorKey, defaultColorIndex);

    return true;
  }
}
