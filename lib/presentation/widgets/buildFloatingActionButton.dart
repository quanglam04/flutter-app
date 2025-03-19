import 'package:flutter/material.dart';

class buildFloatingActionButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.green,
      elevation: 10.0,
      child: const Icon(Icons.add_a_photo, color: Colors.white),
      onPressed: () {
        // Action on button press
      },
    );
  }
}
