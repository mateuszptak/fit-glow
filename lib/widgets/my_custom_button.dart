import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyCustomButton extends StatelessWidget {
  final String myText;
  GestureTapCallback myFunction;

  MyCustomButton({
    super.key,
    required this.myText,
    required this.myFunction,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: myFunction,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 252, 227, 1),
            borderRadius: BorderRadius.circular(50)),
        child: Center(
          child: Text(
            myText,
            style: GoogleFonts.cabin(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
