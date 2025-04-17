import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        
        mainAxisSize: MainAxisSize.min,
        children: [
             Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
              color: const Color.fromARGB(150, 198, 196, 219),
            ),
          
              Text(
              'Learn Flutter the Fun Way!',
              style: GoogleFonts.rampartOne(
                color: const Color.fromARGB(150, 198, 196, 219),
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          
             OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              label: const Text('Start Quiz'),
              icon: const Icon(Icons.quiz_outlined),
            ),
          
        ],
      ),
    );
  }
}
