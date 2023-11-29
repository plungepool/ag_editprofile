import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);
const Color white = Color.fromARGB(255, 255, 255, 255);
const Color blue = Color.fromARGB(255, 64, 105, 224);
const Color black = Color.fromARGB(255, 0, 0, 0);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SizedBox(
        width: 1000.0,
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                IconRow(),
                const SizedBox(height: 50),
                EditProfile(),
                const SizedBox(height: 20),
                ProfileCircle(),
                const SizedBox(height: 20),
                NameButton(),
                PhoneButton(),
                EmailButton(),
                AboutButton()
              ],
            )),
      )),
    );
  }
}

class EditProfile extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          radius: 65,
          backgroundColor: blue,
          child: CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('default_photo.jpg'),
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

class NameButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                            // navigateSecondPage(EditDescriptionFormPage());
                          },
                          child: const Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Rob Duffy',
                                    style: TextStyle(
                                      fontSize: 16,
                                      height: 1.4,
                                      color: black,
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
  }
}

class PhoneButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                            // navigateSecondPage(EditDescriptionFormPage());
                          },
                          child: const Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    '(555) 555 - 5555',
                                    style: TextStyle(
                                      fontSize: 16,
                                      height: 1.4,
                                      color: black,
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
  }
}

class EmailButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                            // navigateSecondPage(EditDescriptionFormPage());
                          },
                          child: const Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'rob@plungepool.dev',
                                    style: TextStyle(
                                      fontSize: 16,
                                      height: 1.4,
                                      color: black,
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
  }
}

class AboutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                            // navigateSecondPage(EditDescriptionFormPage());
                          },
                          child: const Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porttitor fermentum orci, ut tristique nisi dictum ac. Sed nisl leo, rutrum sit amet velit id, interdum rutrum arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam nibh sapien, commodo at condimentum quis, mattis nec nibh. Sed condimentum sed justo et elementum. Fusce quis sem pretium, suscipit neque eget, ornare massa.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      height: 1.4,
                                      color: black,
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
  }
}
