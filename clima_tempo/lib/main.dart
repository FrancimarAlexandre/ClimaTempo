import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/settings_page.dart';
import 'pages/weather_page.dart';
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

  static  List<Widget> _widgetOpnions = <Widget>[
    HomePage(),
    WeatherPage(),
    SettingsPage(),
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
