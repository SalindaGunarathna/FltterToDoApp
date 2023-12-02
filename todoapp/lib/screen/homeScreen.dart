import 'package:flutter/material.dart';
import 'package:todoapp/helpers/dreawer_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To list "),
      ),
      drawer: DrawerNavigation(),
    );
  }
}