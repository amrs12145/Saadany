class User {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> map) => User(
        id: map["id"],
        email: map["email"],
        firstName: map["first_name"],
        lastName: map["last_name"],
        avatar: map["avatar"],
      );

  static List<User> fromJsonList(List<dynamic> list) =>
      list.map((e) => User.fromJson(e)).toList();

  // Map<String, dynamic> toJson() => {
  //       "id": id,
  //       "email": email,
  //       "first_name": firstName,
  //       "last_name": lastName,
  //       "avatar": avatar,
  //     };
}
