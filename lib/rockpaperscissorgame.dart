import 'package:flutter/material.dart';
import 'package:gamee/screens/game.dart';
import 'package:gamee/screens/home.dart';
import 'package:gamee/theme/theme.dart';

class RockPaperScissorsGame extends StatelessWidget {
  const RockPaperScissorsGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: customTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/game': (context) => const Game(),
      },
    );
  }
}
