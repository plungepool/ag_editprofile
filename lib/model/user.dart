import 'dart:io';

class User {
  String photo;
  bool newPhotoFlag = false;
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
}
