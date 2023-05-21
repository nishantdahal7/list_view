import 'package:flutter/material.dart';

showSnackBar(BuildContext context, String text, {Color color = Colors.green}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(' $text '),
    duration: const Duration(seconds: 1),
    behavior: SnackBarBehavior.floating,
    backgroundColor: color,
  ));
}
