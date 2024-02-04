import 'dart:convert';

List<Book> booksFromJson(String str) => List<Book>.from(json.decode(str).map((x) => Book.fromJson(x)));

class Book {
  String? id;
  String? name;
  String? lable;
  String? description;
  String? image;

  Book({
    this.id,
    this.name,
    this.lable,
    this.description,
    this.image,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
    id: json["id"],
    name: json["name"],
    lable: json["lable"],
    description: json["description"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "lable": lable,
    "description": description,
    "image": image,
  };
}