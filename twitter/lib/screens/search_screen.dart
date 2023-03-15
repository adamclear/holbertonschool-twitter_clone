import 'package:flutter/material.dart';
import '../widgets/entry_field.dart';
import '../widgets/users_search_results_widget.dart';
import '../widgets/bottom_bar_menu.dart';
import '../assets/user_list.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

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
        primary: true,
        title: CustomEntryField(
          hint: 'Search',
          controller: _searchController,
        ),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (BuildContext context, int index) {
          final user = userList[index];
          return UsersSearchResultsWidget(
            name: user['name'],
            username: user['username'],
            imgUrl: user['imgUrl'],
            isVerified: user['isVerified'],
          );
        },
      ),
      bottomNavigationBar: const BottomMenuBar(),
    );
  }
}