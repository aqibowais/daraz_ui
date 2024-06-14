import 'package:daraz_ui/views/account_screen.dart';
import 'package:daraz_ui/views/cart_screen.dart';
import 'package:daraz_ui/views/home_screen.dart';
import 'package:daraz_ui/views/msg_screen.dart';
import 'package:daraz_ui/views/products_screen.dart';
import 'package:daraz_ui/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daraz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/HomeScreen': (context) => const HomeScreen(),
        '/AccountScreen': (context) => const AccountScreen(),
        '/CartScreen': (context) => const CartScreen(),
        '/MessageScreen': (context) => const MessageScreen(),
        '/ProductScreen': (context) => const ProductScreen(),
      },
      home: const BottomNavigation(),
    );
  }
}


