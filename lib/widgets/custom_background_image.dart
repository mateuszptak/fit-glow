import 'package:flutter/material.dart';

class CustomBackgroundImage extends StatelessWidget {
  final Widget child;
  final String backgroundImageUrl;
  const CustomBackgroundImage({
    super.key,
    required this.child,
    required this.backgroundImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(backgroundImageUrl),
          // opacity: 0.6,
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
