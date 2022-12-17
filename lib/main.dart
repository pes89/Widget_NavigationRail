import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ejemplo NavigationRail',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _NavigationRailState();
}

class _NavigationRailState extends State<MyHomePage> {
  int _indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Rail'),
      ),
      body: Row(children: <Widget>[
        NavigationRail(
          selectedIndex: _indice,
          onDestinationSelected: (int index) {
            setState(() {
              _indice = index;
            });
          },
          labelType: NavigationRailLabelType.all,
          destinations: const <NavigationRailDestination>[
            NavigationRailDestination(
              icon: Icon(Icons.favorite_border),
              selectedIcon: Icon(Icons.favorite),
              label: Text('Cero'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.bookmark_border),
              selectedIcon: Icon(Icons.book),
              label: Text('Uno'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.star_border),
              selectedIcon: Icon(Icons.star),
              label: Text('Dos'),
            ),
          ],
        ),
        Expanded(
            child: Container(
          alignment: Alignment.center,
          child: Text('Has pulsado el botón: $_indice'),
          color: color(_indice),
        ))
      ]),
    );
  }

  Color color(int route) {
    Color? setColor;
    switch (route) {
      case 0:
        setColor = Colors.green;
        break;
      case 1:
        setColor = Colors.blue;
        break;
      case 2:
        setColor = Colors.grey;
        break;
    }
    return setColor!;
  }
}
