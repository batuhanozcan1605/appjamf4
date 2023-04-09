import 'package:flutter/material.dart';

import '../models/question_model.dart';

class Answers extends StatelessWidget {
  const Answers({Key? key, required this.answer}) : super(key: key);
  final Answer answer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 39.0, vertical: 20),
      child:Column(
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${answer.username}", style: TextStyle(
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
                Flexible(child: Text("${answer.description}")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
