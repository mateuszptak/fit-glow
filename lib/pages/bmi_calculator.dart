import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.of(context).pop();
                },
                child: const Text("LogOut();"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
