import 'package:ag_editprofile/home.dart';
import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);
const Color white = Color.fromARGB(255, 255, 255, 255);
const Color blue = Color.fromARGB(255, 64, 105, 224);
const Color black = Color.fromARGB(255, 0, 0, 0);

class EditName extends StatelessWidget {
  const EditName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        foregroundColor: white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Padding(
          padding: EdgeInsets.fromLTRB(50.0, 16.0, 50.0, 16.0),
          child: Column(
            children: [
              EditNameTextHeader(),
              SizedBox(height: 10),
              NameTextFields(),
              SizedBox(height: 10),
              UpdateButton()
            ],
          )),
    );
  }
}

class EditNameTextHeader extends StatelessWidget {
  const EditNameTextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'What\'s your name?',
      textAlign: TextAlign.left,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: black,
        fontSize: 24,
      ),
    );
  }
}

class NameTextFields extends StatelessWidget {
  const NameTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Flexible(
            child: Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                  ),
                ))),
        Flexible(
            child: Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
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
    return TextButton(
        onPressed: () {
          setState(() {
            HomePage.user.name = 'test';
          });
          Navigator.pop(context);
        },
        child: const Text('Update'));
  }
}
