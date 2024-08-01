import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Clima Tempo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherHomePage(),
    );
  }
}

class WeatherHomePage extends StatefulWidget {
  @override
  _WeatherHomePageState createState() => _WeatherHomePageState();
}
class _WeatherHomePageState extends State<WeatherHomePage> {

  int _selectedIndex = 0;

  static const List<Widget> _widgetOpnions = <Widget>[
    Text('Home Page'),
    Text('Weather'),
    Text('settings'),
  ];

  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clima Tempo'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: _widgetOpnions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label:'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.cloud),
          label: 'Weather',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
          label:'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      )
    );
  }
}
