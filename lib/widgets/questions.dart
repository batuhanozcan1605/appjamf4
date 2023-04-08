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
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF707070),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("", style: TextStyle(
                  color:Color(0xFF707070),
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Flexible(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultrices, dui sed sodales tempor, nisi leo lobortis velit, vel rhoncus tellus tellus ac enim. Fusce convallisjusto a convallis consequat. Class aptent taciti sociosqu")),
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
                    child: Text("timestamp"),
                  ),
                ],
              ),
              InteractionRow(),
            ],
          ),
        ],
      ),
    );
  }
}

class InteractionRow extends StatelessWidget {
  const InteractionRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(

          children: [
            Text("3"),
            IconButton(
                onPressed: (){

                 },
                icon: Icon(Icons.add_circle, color: Color(0xFF707070),))
          ],
        ),
        Row(
          children: [
            Text("2"),
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
