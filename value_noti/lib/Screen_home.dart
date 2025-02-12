import 'package:flutter/material.dart';
import 'package:value_noti/Screen_account.dart';
import 'package:value_noti/Screen_main.dart';
import 'package:value_noti/Screen_search.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _currentSelectedIndex = 0;

  final _pages = [ScreenMain(), ScreenSearch(), ScreenAccount()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
          currentIndex: _currentSelectedIndex,
          onTap: (newIndex) {
            setState(() {
              
          
            _currentSelectedIndex = newIndex;
              });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ]),
    );
  }
}
