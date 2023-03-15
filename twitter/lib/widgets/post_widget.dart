import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String name;
  final String username;
  final String imgUrl;
  final bool isVerified;
  final String text;
  final List<String> hashtags;

  const PostWidget({
    Key? key,
    required this.name,
    required this.username,
    required this.imgUrl,
    required this.isVerified,
    required this.text,
    required this.hashtags,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(imgUrl),
                radius: 20,
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        if (isVerified) ...[
                          const SizedBox(width: 2),
                          Icon(
                            Icons.check_circle,
                            color: Theme.of(context).primaryColor,
                            size: 15,
                          ),
                        ],
                        const SizedBox(width: 5),
                        Text(
                          '@$username',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '·',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '2 m',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      text,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    if (hashtags.isNotEmpty) ...[
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 5,
                        runSpacing: 5,
                        children: [
                          ...hashtags.map(
                            (tag) => Text(
                              '#$tag',
                              style: const TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ],
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 300,
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 25,
                            ),
                            Icon(
                              Icons.chat_bubble_outline,
                              size: 20,
                              color: Colors.grey[600],
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '0',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Colors.grey[600],
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.repeat,
                              size: 20,
                              color: Colors.grey[600],
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '0',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Colors.grey[600],
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.favorite,
                              size: 20,
                              color: Colors.red,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '2',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.red),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.share,
                              color: Colors.grey[600],
                            ),
                          ],
                        ),
                      ],
                    ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 1),
      ],
    );
  }
}