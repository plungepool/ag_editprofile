import 'package:flutter/material.dart';
import 'dart:async';

import 'edit_name.dart';
import 'edit_phone.dart';
import 'edit_email.dart';
import 'edit_about.dart';
import 'edit_photo.dart';

import 'package:ag_editprofile/model/user_data.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);
const Color blue = Color.fromARGB(255, 64, 105, 224);

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static var user = UserData.myUser;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const IconRow(),
                const SizedBox(height: 50),
                const EditProfileText(),
                const SizedBox(height: 20),
                const ProfileCircle(),
                const SizedBox(height: 20),
                buildNameButton(
                    context, HomePage.user.nameFirst, HomePage.user.nameLast),
                buildPhoneButton(context, HomePage.user.phone),
                buildEmailButton(context, HomePage.user.email),
                buildAboutButton(context, HomePage.user.about)
              ],
            ));
      }),
    );
  }

  Widget buildNameButton(
          BuildContext context, String nameFirst, String nameLast) =>
      Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Name',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 1),
              Container(
                  width: 400,
                  height: 50,
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ))),
                  child: Row(children: [
                    Expanded(
                        child: TextButton(
                            onPressed: () {
                              navigateSecondPage(const EditName());
                            },
                            child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 10, 10),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '$nameFirst $nameLast',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        height: 1.4,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ))))),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey,
                      size: 40.0,
                    )
                  ]))
            ],
          ));

  Widget buildPhoneButton(BuildContext context, String phone) => Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Phone',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 1),
          Container(
              width: 400,
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Colors.grey,
                width: 1,
              ))),
              child: Row(children: [
                Expanded(
                    child: TextButton(
                        onPressed: () {
                          navigateSecondPage(const EditPhone());
                        },
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  phone,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    height: 1.4,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ))))),
                const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                  size: 40.0,
                )
              ]))
        ],
      ));

  Widget buildEmailButton(BuildContext context, String email) => Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Email',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 1),
          Container(
              width: 400,
              height: 50,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Colors.grey,
                width: 1,
              ))),
              child: Row(children: [
                Expanded(
                    child: TextButton(
                        onPressed: () {
                          navigateSecondPage(const EditEmail());
                        },
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  email,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    height: 1.4,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ))))),
                const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                  size: 40.0,
                )
              ]))
        ],
      ));

  Widget buildAboutButton(BuildContext context, String about) => Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Tell us about yourself',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 1),
          Container(
              width: 400,
              height: 100,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Colors.grey,
                width: 1,
              ))),
              child: Row(children: [
                Expanded(
                    child: TextButton(
                        onPressed: () {
                          navigateSecondPage(const EditAbout());
                        },
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  about,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    height: 1.4,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ))))),
                const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                  size: 40.0,
                )
              ]))
        ],
      ));

  FutureOr onGoBack(dynamic value) {
    setState(() {});
  }

  void navigateSecondPage(Widget editForm) {
    Route route = MaterialPageRoute(builder: (context) => editForm);
    Navigator.push(context, route).then(onGoBack);
  }
}

class EditProfileText extends StatelessWidget {
  const EditProfileText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Edit Profile',
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: blue,
        fontSize: 24,
      ),
    );
  }
}

class IconRow extends StatelessWidget {
  const IconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Text('9:41', style: TextStyle(fontWeight: FontWeight.bold, color: blue)),
      Spacer(),
      Icon(Icons.network_cell, color: blue),
      Icon(Icons.network_wifi, color: blue),
      Icon(Icons.battery_full, color: blue)
    ]);
  }
}

class ProfileCircle extends StatelessWidget {
  const ProfileCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 65,
          backgroundColor: blue,
          child: CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(HomePage.user.photo),
          ),
        ),
        Positioned(
          top: 10,
          right: 1,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.white,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    50,
                  ),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(2, 4),
                    color: Colors.black.withOpacity(
                      0.3,
                    ),
                    blurRadius: 3,
                  ),
                ]),
            child: const Padding(
              padding: EdgeInsets.all(2.0),
              child: Icon(Icons.edit, color: blue),
            ),
          ),
        ),
      ],
    );
  }
}
