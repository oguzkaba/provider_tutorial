import 'package:flutter/widgets.dart';
import 'package:provider_tutorial/data/local/models/thikness_model.dart';
import 'package:provider_tutorial/data/local/services/service.dart';

class ThiknessProvider extends ChangeNotifier {
  List<Thickness> thkList = [];
  var isLoading = true;

  getThick() async {
    isLoading = true;
    thkList = await LocalService.loadLocalJSON();
    isLoading = false;
    notifyListeners();
  }
}
