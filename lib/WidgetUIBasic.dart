import 'package:flutter/material.dart';

class WidgetUIBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Demo WidgetUI Basic')),
        body: Center(child: Text("Hello, Flutter!"))

    );
  }
}
