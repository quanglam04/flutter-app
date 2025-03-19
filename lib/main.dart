import 'package:first_project/presentation/widgets/bodyWidget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: "Chào bạn mình là Lâm",
        home: InforScreen()
      );
  }
}
