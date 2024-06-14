import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/tab_item.dart';
import 'package:daraz_ui/views/account_screen.dart';
import 'package:daraz_ui/views/cart_screen.dart';
import 'package:daraz_ui/views/home_screen.dart';
import 'package:daraz_ui/views/msg_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const MessageScreen(),
    const CartScreen(),
    const AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomBarFloating(
        items: items,
        backgroundColor: Colors.white,
        color: Colors.grey,
        colorSelected: Colors.red,
        indexSelected: _selectedIndex,
        onTap: _onItemTapped,
        paddingVertical: 35,
      ),
    );
  }
}

const List<TabItem> items = [
  TabItem(
    icon: Icons.home,
    title: 'Home',
  ),
  TabItem(
    icon: Icons.message,
    title: 'Messages',
  ),
  TabItem(
    icon: Icons.shopping_cart,
    title: 'Cart',
  ),
  TabItem(
    icon: Icons.person,
    title: 'Account',
  ),
];
