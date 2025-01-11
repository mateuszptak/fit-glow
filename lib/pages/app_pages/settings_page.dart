import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/constact_us_dialog.dart';
import 'package:flutter_application_2/widgets/email_change_dialog.dart';
import 'package:flutter_application_2/widgets/password_change_dialog.dart';
import 'package:flutter_application_2/widgets/settings_row_widget.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDarkModeOn = true;
  bool areNotificationsOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 22, 20),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/logo_fg.png'),
            ),
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 41, 40, 40),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 1.0),
              ),
              width: MediaQuery.of(context).size.width / 1.2,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SettingsRawWidget(
                      settingsName: 'Dark Mode',
                      settingsWidget: IconButton(
                        onPressed: () {
                          setState(() {
                            isDarkModeOn = !isDarkModeOn;
                          });
                        },
                        icon: Icon(
                            isDarkModeOn == true
                                ? Icons.toggle_on
                                : Icons.toggle_off_outlined,
                            size: 48,
                            color: Colors.white),
                      ),
                    ),
                    const Divider(color: Colors.black, thickness: 4.0),
                    SettingsRawWidget(
                      settingsName: 'Notifications',
                      settingsWidget: IconButton(
                        onPressed: () {
                          setState(() {
                            areNotificationsOn = !areNotificationsOn;
                          });
                        },
                        icon: Icon(
                            areNotificationsOn
                                ? Icons.toggle_on
                                : Icons.toggle_off_outlined,
                            size: 48,
                            color: Colors.white),
                      ),
                    ),
                    SettingsRawWidget(
                      settingsName: 'Time Before',
                      settingsWidget: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color.fromARGB(255, 17, 16, 16),
                        ),
                        child: const CountWidget(),
                      ),
                    ),
                    const Divider(color: Colors.black, thickness: 4.0),
                    SettingsRawWidget(
                      settingsName: 'Change e-mail:',
                      settingsWidget: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) => const EmailChangeDialog(),
                          );
                        },
                        child: const Text('Here'),
                      ),
                    ),
                    const Divider(color: Colors.black, thickness: 4.0),
                    SettingsRawWidget(
                      settingsName: 'Change password:',
                      settingsWidget: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) => const PasswordChangeDialog(),
                          );
                        },
                        child: const Text('Here'),
                      ),
                    ),
                    const Divider(color: Colors.black, thickness: 4.0),
                    const SizedBox(height: 15),
                    const Center(
                      child: Text(
                        'Get in touch with us',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) => const ContactUsDialog(),
                          );
                        },
                        child: const Text('Contact us'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.of(context).pop();
                },
                child: const Text("LogOut();"),
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}

class CountWidget extends StatefulWidget {
  const CountWidget({
    super.key,
  });

  @override
  State<CountWidget> createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  int counter = 25;

  void _incrementCounter() {
    setState(() {
      counter += 5;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter -= 5;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: _decrementCounter,
          icon: const Icon(
            Icons.remove,
            size: 20,
            color: Colors.white,
          ),
        ),
        Text(
          counter.toString(),
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        IconButton(
          onPressed: _incrementCounter,
          icon: const Icon(
            Icons.add,
            size: 20,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
