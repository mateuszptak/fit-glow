import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/settings_page.dart';
import 'package:flutter_application_2/widgets/custom_background_image.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Builder(builder: (context) {
          if (currentIndex == 2) {
            return SettingsPage();
          } else if (currentIndex == 1) {
            return const Center(
              child: Text("Ekran numer 2"),
            );
          } else {
            return const Center(
              child: Text("Ekran numer 1"),
            );
          }
        }),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.black,
          style: TabStyle.react,
          curveSize: 80,
          items: const [
            TabItem(
              icon: Icons.home,
            ),
            TabItem(icon: Icons.favorite_border),
            TabItem(icon: Icons.settings),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
