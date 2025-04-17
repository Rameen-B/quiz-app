import 'package:flutter/material.dart';

class AnswersButton extends StatelessWidget {
  const AnswersButton(
      {super.key, required this.answerText, required this.onTap});
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        shape: const StadiumBorder(),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(150, 198, 196, 219),
      ),
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
