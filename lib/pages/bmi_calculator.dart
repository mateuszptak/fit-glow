import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/custom_background_image.dart';

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: CustomBackgroundImage(
          backgroundImageUrl:
              "https://4kwallpapers.com/images/wallpapers/dark-background-abstract-background-network-3d-background-2048x2048-8324.png",
          child: Column(
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
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.scale, color: Colors.white),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.line_weight_outlined, color: Colors.white),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.online_prediction_sharp, color: Colors.white),
              ),
            ]),
      ),
    );
  }
}
