import 'package:flutter/material.dart';

class PrimaryIconButton extends StatelessWidget {
  final IconData icon; // Icon for the button
  final String? text; // Optional text
  final VoidCallback onPressed; // onPressed callback
  final Color backgroundColor; // Background color of the button
  final Color foregroundColor; // Icon/Text color

  const PrimaryIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.text,
    this.backgroundColor = const Color.fromRGBO(247, 150, 66, 1),
    this.foregroundColor = const Color.fromRGBO(244, 244, 244, 1.0),
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          if (text != null) ...[
            const SizedBox(width: 10),
            Text(text!),
          ],
        ],
      ),
    );
  }
}
