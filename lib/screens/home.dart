import 'package:flutter/material.dart';
import 'package:gamee/main.dart';
import 'package:gamee/widgets/navigate_button.dart';
import '../widgets/author.dart';
import '../widgets/modal_bottom.dart';
import '../constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex: 12, child: Image.asset('images/background.png')),
            NavigateButton(
              onPressed: () => Navigator.pushNamed(context, '/game'),
              title: 'PLAY WITH AI',
            ),
            NavigateButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              title: 'Back to Game Choosing screen',
            ),
            Expanded(
              flex: 3,
              child: GestureDetector(
                onTap: () {
                  ModalBottom(context);
                },
                child: const Text(
                  "See the instruction ?",
                  style: kMeduimTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
