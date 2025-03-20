import 'package:first_project/presentation/screens/HomeScreen.dart';
import 'package:first_project/presentation/screens/WhiteScreen.dart';
import 'package:first_project/presentation/widgets/buildBodyWidget.dart';
import 'package:first_project/statefulWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Flutter Demo", home: WidgetUIBasic()));
}

class WidgetUIBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Widget UI')),
      body: Column(
        children: [

          (TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          )),
          IconButton(onPressed: () {}, icon: Icon(Icons.volume_down)),
          Text('100%'),
          Image.network(
            'https://hoanghamobile.com/tin-tuc/wp-content/uploads/2024/07/anh-sieu-xe.jpg',
          ),
          CheckboxWidget(),
          SwitchWidget(),
          BottomAppBar(
            child: Column(
              children: <Widget>[
                Container(color: Colors.red, height: 100, width: 100),
                Expanded(child: Container(color: Colors.blue, width: 100)),
                Container(color: Colors.red, height: 100, width: 100),
              ],
            ),
          ),
          Wrap(
            spacing: 8.0, // gap between adjacent chips
            runSpacing: 4.0, // gap between lines
            children: <Widget>[
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('AH'),
                ),
                label: const Text('Hamilton'),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('ML'),
                ),
                label: const Text('Lafayette'),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('HM'),
                ),
                label: const Text('Mulligan'),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('JL'),
                ),
                label: const Text('Laurens'),
              ),
            ],
          ),

          Stack(
            children: [
              Container(width: 100, height: 100, color: Colors.yellow),
              Container(width: 90, height: 90, color: Colors.green),
              Container(width: 80, height: 80, color: Colors.blue),
            ],
          ),

        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Chào bạn mình là Lâm", home: InforScreen());
  }
}

class CheckboxWidget extends StatefulWidget {
  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _isChecked,
      onChanged: (bool? newValue) {
        setState(() {
          _isChecked = newValue!;
        });
      },
    );
  }
}

class SwitchWidget extends StatefulWidget {
  @override
  _SwitchWidget createState() => _SwitchWidget();
}

class _SwitchWidget extends State<SwitchWidget> {
  bool _isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isSwitch,
      onChanged: (bool? newValue) {
        setState(() {
          _isSwitch = newValue!;
        });
      },
    );
  }
}





class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  // Danh sách màn hình
  final List<Widget> _screens = [
    HomeScreen(),
    BlankScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Navigation Demo')),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Màn hình trắng"),
        ],
      ),
    );
  }
}
