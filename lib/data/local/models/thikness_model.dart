import 'dart:convert';

List<Thickness> thicknessFromJson(String str) =>
    List<Thickness>.from(json.decode(str).map((x) => Thickness.fromJson(x)));

String thicknessToJson(List<Thickness> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Thickness {
  Thickness({
    this.inch,
    this.mm,
  });

  final double? inch;
  final double? mm;

  factory Thickness.fromJson(Map<String, dynamic> json) => Thickness(
        inch: json["inch"].toDouble(),
        mm: json["mm"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "inch": inch,
        "mm": mm,
      };
}
