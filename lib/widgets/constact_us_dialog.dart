import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/my_custom_textfield.dart';

class ContactUsDialog extends StatelessWidget {
  const ContactUsDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 41, 40, 40),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      content: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const MyCustomTextField(
                keyboardType: TextInputType.text, labelText: 'Your Name'),
            const SizedBox(height: 10),
            const MyCustomTextField(
                keyboardType: TextInputType.emailAddress,
                labelText: 'Your Email'),
            const SizedBox(height: 10),
            const MyCustomTextField(
                keyboardType: TextInputType.phone, labelText: 'Your Phone'),
            const SizedBox(height: 10),
            const MyCustomTextField(
                labelText: 'Your Message', maxLines: 5, minLines: 5),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Send Message'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Go back'),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
