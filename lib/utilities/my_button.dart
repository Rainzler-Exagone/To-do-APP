import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
   MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}