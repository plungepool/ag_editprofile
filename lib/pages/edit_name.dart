import 'package:ag_editprofile/pages/home.dart';
import 'package:flutter/material.dart';

TextEditingController firstNameController =
    TextEditingController(text: HomePage.user.nameFirst);
TextEditingController lastNameController =
    TextEditingController(text: HomePage.user.nameLast);

class EditName extends StatelessWidget {
  const EditName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: const SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.fromLTRB(50.0, 16.0, 50.0, 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EditNameTextHeader(),
                  SizedBox(height: 10),
                  NameTextFields(),
                  SizedBox(height: 220),
                  Center(child: UpdateButton())
                ],
              )),
        ));
  }
}

class EditNameTextHeader extends StatelessWidget {
  const EditNameTextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'What\'s your name?',
      textAlign: TextAlign.left,
      overflow: TextOverflow.visible,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 24,
      ),
    );
  }
}

class NameTextFields extends StatelessWidget {
  const NameTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                child: TextFormField(
                  controller: firstNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                  ),
                ))),
        Flexible(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0),
                child: TextFormField(
                  controller: lastNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name',
                  ),
                ))),
      ],
    );
  }
}

class UpdateButton extends StatefulWidget {
  const UpdateButton({super.key});

  @override
  State<UpdateButton> createState() => _UpdateButtonState();
}

class _UpdateButtonState extends State<UpdateButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          elevation: 2,
          shape: const ContinuousRectangleBorder(),
          fixedSize: const Size(350, 50),
        ),
        onPressed: () {
          setState(() {
            HomePage.user.nameFirst = firstNameController.text;
            HomePage.user.nameLast = lastNameController.text;
          });
          Navigator.pop(context);
        },
        child: const Text('Update', style: TextStyle(color: Colors.white)));
  }
}
