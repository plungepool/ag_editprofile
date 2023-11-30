class User {
  String photo;
  String nameFirst;
  String nameLast;
  String phone;
  String email;
  String aboutme;

  // Constructor
  User({
    required this.photo,
    required this.nameFirst,
    required this.nameLast,
    required this.phone,
    required this.email,
    required this.aboutme,
  });

  User copy({
    String? photoPath,
    String? nameFirst,
    String? nameLast,
    String? phone,
    String? email,
    String? about,
  }) =>
      User(
        photo: photoPath ?? this.photo,
        nameFirst: nameFirst ?? this.nameFirst,
        nameLast: nameLast ?? this.nameLast,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        aboutme: about ?? this.aboutme,
      );
}
