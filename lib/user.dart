class User {
  String photo;
  String name;
  String phone;
  String email;
  String aboutme;

  // Constructor
  User({
    required this.photo,
    required this.name,
    required this.phone,
    required this.email,
    required this.aboutme,
  });

  User copy({
    String? photoPath,
    String? name,
    String? phone,
    String? email,
    String? about,
  }) =>
      User(
        photo: photoPath ?? this.photo,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        aboutme: about ?? this.aboutme,
      );
}
