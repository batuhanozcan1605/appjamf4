import 'package:appjamf4/repository/question_repo.dart';
import 'package:appjamf4/screens/answer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import '../models/question_model.dart';

class Questions extends ConsumerWidget {
  const Questions(
    this.question, {
    Key? key,
    required this.questionIndex,
  }) : super(key: key);
  final Question question;
  final int questionIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionsRepo = ref.watch(questionsProvider);

    final duration = DateTime.now().difference(question.dateTime).inDays;
    final durationInMinutes = DateTime.now().difference(question.dateTime).inMinutes;

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
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  border:
                      Border.all(width: 1.0, color: const Color(0xff707070)),
                ),
                child: Image.asset('images/google_icon.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "${question.title}",
                  style: TextStyle(
                      color: Color(0xFF707070), fontWeight: FontWeight.bold),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("${question.username}"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 4,
                      width: 4,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  duration == 0 ? Text("$durationInMinutes dakika önce ") : Text("$duration gün önce "),
                ],
              ),
              InteractionRow(
                question: question,
                questionIndex: questionIndex,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InteractionRow extends ConsumerWidget {
  final Question question;
  final int questionIndex;
  const InteractionRow({
    super.key,
    required this.question,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionsRepo = ref.watch(questionsProvider);
    bool isPlus = ref.watch(questionsProvider).isPlus(questionIndex);

    return Row(
      children: [
        Row(
          children: [
            Text(
              "${ref.watch(questionsProvider).questionList[questionIndex].plus}",
              style:
                  TextStyle(color: isPlus ? Colors.orange : Color(0xFF707070)),
            ),
            IconButton(
                onPressed: () {
                  ref.read(questionsProvider).plus1(questionIndex, isPlus);
                },
                icon: Icon(
                  Icons.add_circle,
                  color: isPlus ? Colors.orange : Color(0xFF707070),
                ))
          ],
        ),
        Row(
          children: [
            question.answers == null
                ? const Text("0")
                : Text("${question.answers!.length}"),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => AnswerScreen(
                                answers: question.answers,
                                question: question,
                                questionIndex: questionIndex,
                              )));
                },
                icon:SvgPicture.asset('images/comment.svg'),

                )
          ],
        )
      ],
    );
  }
}
