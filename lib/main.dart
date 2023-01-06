import 'package:flutter/material.dart';
import 'package:learn_provider/providers/color_provider.dart';
import 'package:learn_provider/providers/count_provider.dart';
import 'package:learn_provider/providers/todo_provider.dart';
import 'package:learn_provider/widgets/pages/tab_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ColorProvider()),
        ChangeNotifierProvider(create: (_) => ToDoProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: context.watch<ColorProvider>().color,
      ),
      home: TabPage(),
    );
  }
}
