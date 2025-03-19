import 'package:flutter/material.dart';

class buildDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            child: Text(
              'Trịnh Quang Lâm',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(title: Text('Team Member') ,leading: Icon(Icons.people),),
          ListTile(title: Text('Mail Address'), leading: Icon(Icons.mail),),
          ListTile(title: Text('Phone Number'), leading: Icon(Icons.phone),),
          ListTile(title: Text('Comment Bank'), leading: Icon(Icons.comment_bank),)
        ],
      ),
    );
  }
}

