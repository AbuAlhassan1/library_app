import 'dart:convert';

List<Category> categoriesFromJson(String str) => List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));

class Category {
  String? id;
  String? name;
  String? lable;

  Category({
    this.id,
    this.name,
    this.lable,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
    lable: json["lable"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "lable": lable,
  };
}