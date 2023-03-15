import 'package:flutter/material.dart';
import '../widgets/side_bar_menu.dart';
import '../widgets/bottom_bar_menu.dart';
import '../widgets/post_widget.dart';
import '../assets/post_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      drawer: const SideBarMenu(),
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (BuildContext context, int index) {
          final post = postList[index];
          return PostWidget(
            name: post['name'],
            username: post['username'],
            imgUrl: post['imgUrl'],
            isVerified: post['isVerified'],
            text: post['text'],
            hashtags: post['hashtags'],
          );
        },
      ),
      bottomNavigationBar: const BottomMenuBar(),
    );
  }
}