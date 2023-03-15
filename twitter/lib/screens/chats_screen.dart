import 'package:flutter/material.dart';
import '../widgets/bottom_bar_menu.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  ChatsScreenState createState() => ChatsScreenState();
}

class ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats')
      ),
      bottomNavigationBar: const BottomMenuBar(),
    );
  }
}