import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context){
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            CircleAvatar(
              backgroundColor: (data['correct_answer'] == data['user_answer'])
              ? Colors.lightBlue
              : const Color.fromARGB(255, 226, 62, 207),
          child: Text(((data['question_index'] as int) 
          + 1).toString(),
          style: const TextStyle(
            fontSize: 22,
          )),
            ),
          Expanded(
            child: Column(
              children:[
              Text(data['question'] as String),
              const SizedBox(
                height: 5,
                ),
                Text(data['correct_answer'] as String,
                style: TextStyle(
                  color: const Color.fromARGB(255, 226, 62, 207)
                ),
                ),
                Text(data['user_answer'] as String,
                style: TextStyle(
                  color: Colors.lightBlue
                ),
                ),
              ],
            ),
          )
        ],
        );
    }).toList(),
    );
  }
}