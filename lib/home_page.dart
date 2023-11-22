import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rabbithole/tag_widget.dart';

import 'app_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;

  static const TextStyle categoryStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var c = context.watch<AppState>();
    List<Widget> categoryWidgets = [];
    List<Widget> categoryTiles = [
      const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.green,
          ),
          child: Text('Tags'))
    ];
    var categoryList = c.tags.toList();
    for (int i = 0; i < categoryList.length; i++) {
      categoryWidgets.add(TagWidget(title: categoryList[i]));
      categoryTiles.add(ListTile(
        title: Text(categoryList[i]),
        selected: _selectedIndex == i,
        onTap: () {
          _onItemTapped(i);
          Navigator.pop(context);
        },
      ));
    }
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: categoryWidgets[_selectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: categoryTiles,
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
    );
  }
}
