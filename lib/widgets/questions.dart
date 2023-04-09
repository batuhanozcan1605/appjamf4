import 'package:appjamf4/repository/question_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/question_model.dart';

class Questions extends ConsumerWidget {
  const Questions(this.question, {Key? key}) : super(key: key);
  final Question question;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionsRepo = ref.watch(questionsProvider);

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
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 6),
            child: Row(
              children: [
                Flexible(child: Text("${question.description}")),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("${question.username}"),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    //child: Text("${question.timeStamp}"),
                  ),
                ],
              ),
              InteractionRow(question: question),
            ],
          ),
        ],
      ),
    );
  }
}

class InteractionRow extends ConsumerWidget {
  final Question question;
  const InteractionRow({
    super.key, required this.question,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionsRepo = ref.watch(questionsProvider);

    return Row(
      children: [
        Row(

          children: [
            Text("${question.plus}"),
            IconButton(
                onPressed: (){

                 },
                icon: Icon(Icons.add_circle, color: Color(0xFF707070),))
          ],
        ),
        Row(
          children: [
            Text("${question.comment}"),
            IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.mode_comment_rounded, color: Color(0xFF707070),))
          ],

        )
      ],
    );
  }
}
