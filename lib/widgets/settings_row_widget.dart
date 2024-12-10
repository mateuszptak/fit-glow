import 'package:flutter/material.dart';

class SettingsRawWidget extends StatelessWidget {
  const SettingsRawWidget({
    super.key,
    required this.settingsName,
    required this.settingsWidget,
  });

  final String settingsName;
  final Widget settingsWidget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          settingsName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 21,
          ),
        ),
        settingsWidget,
      ],
    );
  }
}
