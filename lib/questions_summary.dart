import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.data});
  final List<Map<String, Object>> data;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: data.map((answer) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: (answer['isCorrect'] as bool) ? Colors.green : Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Q${((answer['questionIndex'] as int) + 1)}',
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(150, 198, 196, 219),
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Question: ${answer['question']}',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'Correct Answer: ${answer['correctAnswer']}',
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(150, 198, 196, 219),
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Your Answer: ${answer['chosenAnswer']} ',
                                style: GoogleFonts.lato(
                                  color: (answer['isCorrect'] as bool) ? Colors.green : Colors.red,
                                  fontSize: 14,
                                ),
                              ),
                              WidgetSpan(
                                child: Icon(
                                  (answer['isCorrect'] as bool) ? Icons.check : Icons.close,
                                  color: (answer['isCorrect'] as bool) ? Colors.green : Colors.red,
                                  size: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
