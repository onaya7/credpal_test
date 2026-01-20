import 'package:credpal/feature/home/presentation/view/home_view.dart';
import 'package:credpal/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CredPal Test App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: FontFamily.avenir,
      ),
      home: const HomeView(),
    );
  }
}
