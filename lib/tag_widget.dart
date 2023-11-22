import 'package:flutter/material.dart';
import 'package:rabbithole/app_state.dart';
import 'package:rabbithole/tag_freq_widget.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: [
          TabBar(tabs: [
            for (var freqIcon in AppState.frequencies.values)
              Tab(icon: Icon(freqIcon)),
          ]),
          Expanded(
            child: TabBarView(
              children: [
                for (var freq in AppState.frequencies.keys)
                  TagFreqWidget(title: title, freq: freq)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
