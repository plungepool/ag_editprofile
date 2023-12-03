import 'package:ag_editprofile/pages/home.dart';
import 'package:flutter/material.dart';

TextEditingController emailController =
    TextEditingController(text: HomePage.user.email);

class EditEmail extends StatelessWidget {
  const EditEmail({super.key});

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
                  EditEmailTextHeader(),
                  SizedBox(height: 10),
                  EmailTextFields(),
                  SizedBox(height: 220),
                  Center(child: UpdateButton())
                ],
              )),
        ));
  }
}

class EditEmailTextHeader extends StatelessWidget {
  const EditEmailTextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'What\'s your email?',
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

class EmailTextFields extends StatelessWidget {
  const EmailTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your email address',
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
            HomePage.user.email = emailController.text;
          });
          Navigator.pop(context);
        },
        child: const Text('Update', style: TextStyle(color: Colors.white)));
  }
}
