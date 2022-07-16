import 'package:flutter/services.dart';

import '../models/thikness_model.dart';

class LocalService {
  static Future<List<Thickness>> loadLocalJSON() async {
    final data = await rootBundle.loadString("assets/json/thickness_data.json");
    return thicknessFromJson(data);
  }
}
