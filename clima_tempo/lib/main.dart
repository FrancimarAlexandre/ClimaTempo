import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget{
  const MyAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 56 ,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          const IconButton(icon:Icon(Icons.menu),
            tooltip: 'Navigatot button',
            onPressed: null,
          ),

          Expanded(child: title,),
          const IconButton(
            icon: Icon(Icons.search),
          tooltip: 'Search buttom',
          onPressed:null,
          
        ),
        ],
      ),
    );
  }

}

class MainFunction extends StatelessWidget{
  const MainFunction({super.key});
    
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(
            title: Text(
            'Clima Tempo',
            style: Theme.of(context)
            .primaryTextTheme
            .titleLarge,
            ),
          ),
          const Expanded(child: Center(
            child: Text('Clima Tempo'),
          ),
          ),
        ],
      ),
    );
  }
}
void main(){
  runApp(
    const MaterialApp(
      title: 'clima tempo',
      home: SafeArea(
      child: MainFunction(),
      ), 
    ),
  );
}
