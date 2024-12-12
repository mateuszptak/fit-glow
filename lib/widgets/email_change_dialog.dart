import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/my_custom_textfield.dart';

class EmailChangeDialog extends StatelessWidget {
  const EmailChangeDialog({
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
                keyboardType: TextInputType.emailAddress,
                labelText: 'Your password'),
            const SizedBox(height: 10),
            const MyCustomTextField(
                keyboardType: TextInputType.phone,
                labelText: 'Your new e-mail'),
            const SizedBox(height: 10),
            const MyCustomTextField(
                keyboardType: TextInputType.phone,
                labelText: 'Confirm new e-mail'),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Confirm changes'),
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
