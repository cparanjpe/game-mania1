import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:gamee/game/flappy_bird_game.dart';
import 'package:gamee/screens/game_over_screen.dart';
import 'package:gamee/screens/main_menu_screen.dart';

class FlappyBirdGameScreen extends StatelessWidget {
  const FlappyBirdGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final game = FlappyBirdGame();
    return GameWidget(
      game: game,
      initialActiveOverlays: const [MainMenuScreen.id],
      overlayBuilderMap: {
        'mainMenu': (context, _) => MainMenuScreen(game: game),
        'gameOver': (context, _) => GameOverScreen(game: game),
      },
    );
  }
}
