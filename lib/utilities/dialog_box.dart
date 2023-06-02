import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_3/utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a new task"),
            ),
            //button->save+cancel
            Row(
              children: [
                //save button
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(width: 8),

                MyButton(text: "Delete", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
