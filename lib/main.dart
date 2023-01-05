import 'package:flutter/material.dart';
import 'package:learn_provider/providers/count_provider.dart';
import 'package:learn_provider/widgets/pages/counter_page.dart';
import 'package:learn_provider/widgets/pages/tab_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabPage(),
    );
  }
}
