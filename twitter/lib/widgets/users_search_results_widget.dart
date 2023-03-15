import 'package:flutter/material.dart';

class UsersSearchResultsWidget extends StatelessWidget {
  final String name;
  final String username;
  final String imgUrl;
  final bool isVerified;

  const UsersSearchResultsWidget({
    Key? key,
    required this.name,
    required this.username,
    required this.imgUrl,
    this.isVerified = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(imgUrl),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (isVerified)
                          const SizedBox(
                            width: 5,
                          ),
                        if (isVerified)
                          Icon(
                            Icons.verified,
                            color: Theme.of(context).primaryColor,
                            size: 18,
                          ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    Text(
                      '@$username',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[350],
          ),
        ],
      ),
    );
  }
}