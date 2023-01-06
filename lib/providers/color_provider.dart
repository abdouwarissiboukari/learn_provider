import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_provider/services/shared_color.dart';

class ColorProvider with ChangeNotifier {
  static List<MaterialColor> defaultColors = Colors.primaries;

  MaterialColor color = defaultColors[0];

  ColorProvider() {
    getColorIndex();
  }

  changeColor(MaterialColor newColor) async {
    color = newColor;
    notifyListeners();
    await SharedColor().setColorIndex(defaultColors.indexOf(newColor));
  }

  getColorIndex() async {
    SharedColor().getColorIndex().then((value) {
      color = defaultColors[value];
      notifyListeners();
    });
  }
}
