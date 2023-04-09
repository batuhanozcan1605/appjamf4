import 'package:flutter/material.dart';
import '../models/question_model.dart';

class QuestionToAnswer extends StatelessWidget {
  const QuestionToAnswer(this.question, {Key? key}) : super(key: key);
  final Question question;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  border: Border.all(width: 1.0, color: const Color(0xff707070)),
                ),
                child: Image.asset('images/google_icon.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${question.title}", style: TextStyle(
                    color:Color(0xFF707070),
                    fontWeight: FontWeight.bold
                ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4),
            child: Row(
              children: [
                Flexible(child: Text("${question.description}")),
              ],
            ),
          ),

        ],
      ),
    );
  }
}