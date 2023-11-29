import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);
const Color white = Color.fromARGB(255, 255, 255, 255);
const Color blue = Color.fromARGB(255, 64, 105, 224);
const Color black = Color.fromARGB(255, 0, 0, 0);

class EditName extends StatelessWidget {
  const EditName({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: white,
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 50),
              ],
            )),
      ),
    );
  }
}