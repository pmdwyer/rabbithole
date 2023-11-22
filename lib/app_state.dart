import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  static const Map<String, IconData> frequencies = {
    'Real Time': Icons.signal_cellular_4_bar,
    'Frequent': Icons.signal_cellular_alt,
    'Occasional': Icons.signal_cellular_alt_2_bar,
    'Sometimes': Icons.signal_cellular_alt_1_bar,
    'Rarely': Icons.signal_cellular_0_bar,
  };

  Set<String> tags = {
    'Home',
    'Blogs',
    'News',
  };

  Map<String, Uri> blogs = {
    'nytimes':
        Uri(path: 'https://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml'),
  };

  Map<String, List<String>> posts = {
    'nytimes': ['trump is a dumbass', 'war in gaza continues', 'ukraine is getting f\'ed up']
  };

  Map<(String, String), List<String>> tagFreqBlogs = {
    ('Home', 'Real Time'): ['a', 'b'],
    ('Home', 'Frequent'): ['c', 'd'],
    ('Home', 'Occasional'): ['nytimes'],
    ('Home', 'Sometimes'): ['e','f','g'],
    ('Home', 'Rarely'): ['h','i','j','k'],
    ('Blogs', 'Real Time'): ['l'],
    ('Blogs', 'Frequent'): ['m','n'],
    ('Blogs', 'Occasional'): ['o','p','q'],
    ('Blogs', 'Sometimes'): ['r','s','t','u'],
    ('Blogs', 'Rarely'): ['v','y','x','z','aa'],
    ('News', 'Real Time'): [],
    ('News', 'Frequent'): ['nytimes'],
    ('News', 'Occasional'): [],
    ('News', 'Sometimes'): [],
    ('News', 'Rarely'): [],
  };
}
