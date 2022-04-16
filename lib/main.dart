import 'package:chat/screens/screen.dart';
import 'package:chat/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final ValueNotifier<ThemeMode> themeSwitch =
      ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeSwitch,
      builder: (BuildContext contex, ThemeMode currentMode, _) {
        return MaterialApp(
            theme: AppTheme.light(),
            darkTheme: AppTheme.dark(),
            themeMode: currentMode,
            title: 'Chat',
            debugShowCheckedModeBanner: false, // 去除Debug Banner
            home: HomeScreen());
      },
    );
  }
}
