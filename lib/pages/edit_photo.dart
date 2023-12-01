import 'package:ag_editprofile/pages/home.dart';
import 'package:flutter/material.dart';

TextEditingController photoController =
    TextEditingController(text: HomePage.user.photo);

class EditPhoto extends StatelessWidget {
  const EditPhoto({super.key});

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
      body: const Padding(
          padding: EdgeInsets.fromLTRB(50.0, 16.0, 50.0, 16.0),
          child: Column(
            children: [
              EditPhotoTextHeader(),
              SizedBox(height: 10),
              NameTextFields(),
              SizedBox(height: 10),
              UpdateButton()
            ],
          )),
    );
  }
}

class EditPhotoTextHeader extends StatelessWidget {
  const EditPhotoTextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'What\'s your photo number?',
      textAlign: TextAlign.left,
      overflow: TextOverflow.ellipsis,
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
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: photoController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your photo number',
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
            HomePage.user.photo = photoController.text;
          });
          Navigator.pop(context);
        },
        child: const Text('Update'));
  }
}
