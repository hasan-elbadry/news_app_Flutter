import 'package:flutter/material.dart';
import 'package:news_project_api_flutter/provider/news_provider.dart';
import 'package:news_project_api_flutter/screens/home_pagescreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        child: const HomePage(),
        create: (context) => NewsProvider(),
      ),
    );
  }
}
