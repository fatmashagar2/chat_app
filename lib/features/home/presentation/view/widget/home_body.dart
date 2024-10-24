import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/features/calls/presentation/view/calls_view.dart';
import 'package:chat_app/features/status/presentation/view/status_view.dart';
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
    StatusView(),
    CallsView()
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
      floatingActionButton: _selectedIndex == 0
          ? FloatingActionButton(
        backgroundColor: ColorsApp.primaryColor,
        onPressed: () {},
        child: const Icon(Icons.chat),
      )
          : null,
    );
  }
}
