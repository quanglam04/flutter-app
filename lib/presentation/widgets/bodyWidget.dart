import 'package:first_project/presentation/widgets/buildBottomNavigationBar.dart';
import 'package:first_project/presentation/widgets/buildColumnBodyWidget.dart';
import 'package:first_project/presentation/widgets/buildDrawer.dart';
import 'package:first_project/presentation/widgets/buildFloatingActionButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InforScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter Lammmmmmmmmm',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Welcome to Flutter Lammmmmmmmmm'),
        ),
        body: buildColumnBodyWidget(),
        floatingActionButton: buildFloatingActionButton(),
        drawer: buildDrawer(),
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }


}



