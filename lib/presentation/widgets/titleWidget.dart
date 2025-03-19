

import 'package:flutter/material.dart';

class TitleInfor extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chào bạn minh là Lâm",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Mình đến từ Hà Nội'),
        ),
      ),
      
    );
    
  }


}