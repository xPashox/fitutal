import 'package:fitutal/ui/challenge.dart';
import 'package:fitutal/ui/exercices.dart';
import 'package:fitutal/ui/profile.dart';
import 'package:fitutal/ui/store.dart';
import 'package:fitutal/ui/summary.dart';
import 'package:flutter/material.dart';

import 'test.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _current_tab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _current_tab = index;
            });
          },
          currentIndex: _current_tab,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
              backgroundColor: Colors.lightBlue[800],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events),
              label: '',
              backgroundColor: Colors.lightBlue[800],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.hiking),
              label: '',
              backgroundColor: Colors.lightBlue[800],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
              backgroundColor: Colors.lightBlue[800],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: '',
              backgroundColor: Colors.lightBlue[800],
            )
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
        ),
        body: IndexedStack(
          children: <Widget>[
            // Llamar a otros StatefulWidgets
            Summary(),
            Ejercicios(),
            Desafio(),
            Profile(),
            Tienda(),
          ],
          index: _current_tab,
        ));
  }
}
