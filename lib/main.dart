import 'package:chat/screens/screen.dart';
import 'package:chat/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.light,

      title: 'Chat',
      debugShowCheckedModeBanner: false, // 去除Debug Banner
      home: HomeScreen()
    );
  }
}
