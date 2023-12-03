import 'package:ag_editprofile/pages/home.dart';
import 'package:flutter/material.dart';

TextEditingController aboutController =
    TextEditingController(text: HomePage.user.about);

class EditAbout extends StatelessWidget {
  const EditAbout({super.key});

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
                  EditAboutTextHeader(),
                  SizedBox(height: 10),
                  AboutTextFields(),
                  SizedBox(height: 120),
                  Center(child: UpdateButton())
                ],
              )),
        ));
  }
}

class EditAboutTextHeader extends StatelessWidget {
  const EditAboutTextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'What type of passenger are you?',
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

class AboutTextFields extends StatelessWidget {
  const AboutTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                child: TextFormField(
                  controller: aboutController,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:
                        'Write a little bit about yourself. Do you like chatting? Are you a smoker? Do you bring pets with you? etc.',
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
            HomePage.user.about = aboutController.text;
          });
          Navigator.pop(context);
        },
        child: const Text('Update', style: TextStyle(color: Colors.white)));
  }
}
