import 'package:flutter/foundation.dart';

class RecetasProvider extends ChangeNotifier {
  Map<String, int> _indexData = {"weekIndex": 0, "recipeIndex": 0, "dayIndex": 0};

  int get weekIndex => _indexData["weekIndex"] ?? 0;
  int get dayIndex => _indexData["dayIndex"] ?? 0;
  int get recetaIndex => _indexData["recipeIndex"] ?? 0;
  Map<String, int> get indexData => _indexData;

  void setIndexData(Map<String, int> newData) {
    _indexData = newData;
    notifyListeners();
  }
}
