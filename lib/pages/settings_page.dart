import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/my_custom_textfield.dart';
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
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SettingsRawWidget(
                      settingsName: 'Dark Mode',
                      settingsWidget: Icon(Icons.toggle_on, size: 36),
                    ),
                    const Divider(color: Colors.black, thickness: 4.0),
                    const SettingsRawWidget(
                      settingsName: 'Notifications',
                      settingsWidget: Icon(Icons.toggle_on, size: 36),
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
                    const SettingsRawWidget(
                      settingsName: 'Change e-mail:',
                      settingsWidget: Icon(Icons.toggle_on, size: 36),
                    ),
                    const Divider(color: Colors.black, thickness: 4.0),
                    const SettingsRawWidget(
                      settingsName: 'Change password:',
                      settingsWidget: Icon(Icons.toggle_on, size: 36),
                    ),
                    const Divider(color: Colors.black, thickness: 4.0),
                    const SizedBox(height: 15),
                    const Center(
                      child: Text(
                        'Get in touch with us',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor:
                                  const Color.fromARGB(255, 41, 40, 40),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              content: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    const SizedBox(height: 20),
                                    const MyCustomTextField(
                                        keyboardType: TextInputType.text,
                                        labelText: 'Your Name'),
                                    const SizedBox(height: 10),
                                    const MyCustomTextField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        labelText: 'Your Email'),
                                    const SizedBox(height: 10),
                                    const MyCustomTextField(
                                        keyboardType: TextInputType.phone,
                                        labelText: 'Your Phone'),
                                    const SizedBox(height: 10),
                                    const MyCustomTextField(
                                        labelText: 'Your Message',
                                        maxLines: 5,
                                        minLines: 5),
                                    const SizedBox(height: 20),
                                    SizedBox(
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Text('Send Message'),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
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
            size: 25,
            color: Colors.white,
          ),
        ),
        Text(
          counter.toString(),
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
        IconButton(
          onPressed: _incrementCounter,
          icon: const Icon(
            Icons.add,
            size: 25,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
