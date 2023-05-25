import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class temp extends StatefulWidget {
  const temp({Key? key}) : super(key: key);

  @override
  State<temp> createState() => _tempState();
}

class _tempState extends State<temp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Fonts"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "hihihihihihihihi",
              style: TextStyle(
                fontSize: 80,
              ),
            ),
            Text(
              "hello",
              style: GoogleFonts.caveat(
                fontSize: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
