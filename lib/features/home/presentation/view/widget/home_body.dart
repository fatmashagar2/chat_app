import 'package:chat_app/core/themes/colors.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'list_chat_item.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int _selectedIndex = 0;

   static const List<Widget> _pages = <Widget>[
     ListChatItem(),
     Center(child: Text('Status Screen', style: TextStyle(fontSize: 24))),
    Center(child: Text('Calls Screen', style: TextStyle(fontSize: 24))),
  ];
 void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_outlined),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
        floatingActionButton: FloatingActionButton(backgroundColor: ColorsApp.primaryColor,onPressed: (){

        },child: const Icon(Icons.chat),)
    );
  }
}