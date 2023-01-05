import 'package:flutter/material.dart';
import 'package:learn_provider/widgets/pages/color_page.dart';
import 'package:learn_provider/widgets/pages/counter_page.dart';

class TabPage extends StatelessWidget {
  static List<Icon> icons = const [
    Icon(
      Icons.numbers,
    ),
    Icon(
      Icons.palette,
    ),
    Icon(
      Icons.list,
    ),
  ];

  List<Tab> tabs = icons
      .map((icon) => Tab(
            icon: icon,
          ))
      .toList();

  TabBar tabBar() => TabBar(tabs: tabs);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: icons.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Apprendre les providers"),
            bottom: tabBar(),
          ),
          body: TabBarView(children: [
            CounterPage(),
            ColorPage(),
            CounterPage(),
          ]),
        ));
  }
}
