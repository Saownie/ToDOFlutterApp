import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.amber,
      content: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        height: 100,
        child: Column(children: [
   //get user input
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new Task",
            ),
          ),

          // Save and cancle button
        ],),
      ),
    );
  }
}
