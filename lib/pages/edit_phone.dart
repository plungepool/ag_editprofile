import 'package:ag_editprofile/pages/home.dart';
import 'package:flutter/material.dart';

TextEditingController phoneController =
    TextEditingController(text: HomePage.user.phone);

class EditPhone extends StatelessWidget {
  const EditPhone({super.key});

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
                  EditPhoneTextHeader(),
                  SizedBox(height: 10),
                  PhoneTextFields(),
                  SizedBox(height: 220),
                  Center(child: UpdateButton())
                ],
              ))),
    );
  }
}

class EditPhoneTextHeader extends StatelessWidget {
  const EditPhoneTextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'What\'s your phone number?',
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

class PhoneTextFields extends StatelessWidget {
  const PhoneTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                child: TextFormField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your phone number',
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
            HomePage.user.phone = phoneController.text;
          });
          Navigator.pop(context);
        },
        child: const Text('Update', style: TextStyle(color: Colors.white)));
  }
}
