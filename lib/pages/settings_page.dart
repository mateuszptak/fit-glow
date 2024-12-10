import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/count_widget.dart';
import 'package:flutter_application_2/widgets/custom_background_image.dart';
import 'package:flutter_application_2/widgets/settings_row_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 20, 20),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(80),
              ),
              child: Image.asset('assets/logo.png'),
            ),
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 41, 40, 40),
                borderRadius: BorderRadius.circular(25),
              ),
              width: MediaQuery.of(context).size.width / 1.2,
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SettingsRawWidget(
                      settingsName: 'Dark Mode',
                      settingsWidget: Icon(Icons.toggle_on, size: 36),
                    ),
                    Divider(color: Colors.black, thickness: 4.0),
                    SettingsRawWidget(
                      settingsName: 'Notifications',
                      settingsWidget: Icon(Icons.toggle_on, size: 36),
                    ),
                    Divider(color: Colors.black, thickness: 4.0),
                    SettingsRawWidget(
                      settingsName: 'Time Before',
                      settingsWidget: CountWidget(),
                    )
                  ],
                ),
              ),
            ),
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
