import 'package:flutter/material.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({Key? key}) : super(key: key);

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width * 0.75;
    return Drawer(
      width: screenWidth,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 215,
            child: DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/242/242611.png?w=740&t=st=1678830773~exp=1678831373~hmac=ab856cc348096f5d3a803f73b02403966cf90d096159ea446e7f79609dd037e2',
                    ),
                    radius: 35,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 15),
                    child: const Text(
                      'UserName',
                      style: TextStyle(
                        color: Color.fromARGB(255, 131, 131, 131),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        '0 Followers',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        '0 Following',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.person),
                  iconColor: Colors.grey[600],
                  title: const Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(Icons.format_list_bulleted),
                  iconColor: Colors.grey[600],
                  title: const Text(
                    'Lists',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(Icons.bookmark),
                  iconColor: Colors.grey[600],
                  title: const Text(
                    'Bookmark',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(Icons.flash_on),
                  iconColor: Colors.grey[600],
                  title: const Text(
                    'Moments',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () => {},
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[350],
          ),
          SizedBox(
            height: 100,
            child: Column(
              children: [
                ListTile(
                  title: const Text(
                    'Settings and Privacy',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () => {},
                ),
                ListTile(
                  title: const Text(
                    'Help Center',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () => {},
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[350],
          ),
          SizedBox(
            height: 50,
            child: Column(
              children: [
                ListTile(
                  title: const Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () => {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}