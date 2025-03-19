import 'package:flutter/material.dart';

class buildColumnBodyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Chào bạn mình là Lâm"),
        Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text("TechStack: Java")),
            ElevatedButton(onPressed: () {}, child: Text("TechStack: Python")),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("TechStack: JavaScript"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("TechStack: Kong-GateWay"),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
