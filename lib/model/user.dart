class User {
  String photo;
  String nameFirst;
  String nameLast;
  String phone;
  String email;
  String about;

  // Constructor
  User({
    required this.photo,
    required this.nameFirst,
    required this.nameLast,
    required this.phone,
    required this.email,
    required this.about,
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
        photo: photoPath ?? photo,
        nameFirst: nameFirst ?? this.nameFirst,
        nameLast: nameLast ?? this.nameLast,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        about: about ?? this.about,
      );
}
