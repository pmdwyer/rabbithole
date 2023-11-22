import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:rabbithole/blog_widget.dart';

import 'app_state.dart';

class TagFreqWidget extends StatelessWidget {
  const TagFreqWidget({super.key, required this.title, required this.freq});

  final String title;
  final String freq;

  @override
  Widget build(BuildContext context) {
    var c = context.watch<AppState>();
    var key = (title, freq);
    if (!c.tagFreqBlogs.containsKey(key)) {
      return ListView();
    }
    var blogs = c.tagFreqBlogs[key]!;
    return ListView(
      children: [
        for (var blog in blogs)
          BlogWidget(title: blog),
      ],
    );
  }

}