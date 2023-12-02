import 'package:ag_editprofile/pages/home.dart';
import 'package:flutter/material.dart';

import 'dart:io';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: EditPhotoTextHeader()),
              SizedBox(height: 10),
              PhotoUploadField(),
              SizedBox(height: 10),
              Center(child: UpdateButton())
            ],
          )),
    );
  }
}

class EditPhotoTextHeader extends StatelessWidget {
  const EditPhotoTextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Upload a photo of yourself:',
          textAlign: TextAlign.left,
          overflow: TextOverflow.visible,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        Text(
          '(Photo picker disabled in main branch. See ReadMe for details.)',
          textAlign: TextAlign.center,
          overflow: TextOverflow.visible,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class PhotoUploadField extends StatefulWidget {
  const PhotoUploadField({super.key});

  @override
  State<PhotoUploadField> createState() => _PhotoUploadFieldState();
}

class _PhotoUploadFieldState extends State<PhotoUploadField> {
  File imageFile = File(HomePage.user.photo);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  child: SizedBox(
                      width: 300, height: 300, child: Image.file(imageFile)),
                ),
              )),
        )
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
          Navigator.pop(context);
        },
        child: const Text('Update', style: TextStyle(color: Colors.white)));
  }
}
