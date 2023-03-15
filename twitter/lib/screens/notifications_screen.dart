import 'package:flutter/material.dart';
import '../widgets/bottom_bar_menu.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  NotificationsScreenState createState() => NotificationsScreenState();
}

class NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/242/242611.png?w=740&t=st=1678830773~exp=1678831373~hmac=ab856cc348096f5d3a803f73b02403966cf90d096159ea446e7f79609dd037e2',
            ),
          ),
        ),
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 227, 231, 235),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "No notifications available yet",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "When new notifications are found, they'll show up here.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 19,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomMenuBar(),
    );
  }
}