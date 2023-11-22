import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';

class BlogWidget extends StatelessWidget {
  const BlogWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    var c = context.watch<AppState>();
    var posts = [];
    if (c.posts.containsKey(title)) {
      posts = c.posts[title]!;
    }
    return Column(
      children: [
        Row(
          children: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          )],
        ),
        Row(
          children: [
            Icon(Icons.arrow_forward_ios),  // TODO: this should be an expand button
            for (var post in posts)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text(post)),
              )
          ],
        )
      ],
    );
  }
}
