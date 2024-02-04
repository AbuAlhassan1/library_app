class Profile {
  String? userName;
  String? email;
  String? name;
  String? phoneNumber;
  String? image;

  Profile({
    this.userName,
    this.email,
    this.name,
    this.phoneNumber,
    this.image,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
    userName: json["userName"],
    email: json["email"],
    name: json["name"],
    phoneNumber: json["phoneNumber"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "userName": userName,
    "email": email,
    "name": name,
    "phoneNumber": phoneNumber,
    "image": image,
  };
}