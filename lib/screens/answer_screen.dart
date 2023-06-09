import 'package:appjamf4/models/question_model.dart';
import 'package:appjamf4/repository/answer_repo.dart';
import 'package:appjamf4/widgets/question_to_answer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repository/question_repo.dart';
import '../widgets/widgets.dart';

class AnswerScreen extends ConsumerStatefulWidget {
  const AnswerScreen(
      {Key? key, required this.answers, required this.question, required this.questionIndex,})
      : super(key: key);
  final List<Answer>? answers;
  final Question question;
  final int questionIndex;

  @override
  _AnswerScreenState createState() => _AnswerScreenState();
}

  class _AnswerScreenState extends ConsumerState<AnswerScreen>{
    TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final answerRepo = ref.watch(answerProvider);
    final Size screenSize = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50),
        child: const CustomAppBar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionToAnswer(widget.question),
          widget.answers != null ? Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 22.0, bottom: 10),
              child: Text("${widget.answers!.length} Cevap",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )),
            ),
          ) : Center(),
          const Divider(
            thickness: 1.0,
          ),

          Expanded(
            child: widget.answers != null ? ListView.separated(
                itemBuilder: (context, index) =>
                    Answers(answer: widget.answers![index],),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: widget.answers!.length) : const Text("null"),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28.0),
                topRight: Radius.circular(28.0),)
            ),
            height: 76,

            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextField(
                          controller: _controller,
                          cursorColor: Colors.black87,
                          decoration: InputDecoration(
                            hintText: "Yanıtınızı ekleyin.",
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {

                          setState(() {
                            Answer answer = Answer(
                                username: "Admin", description: _controller.text);
                            ref.read(questionsProvider).addAnswer(
                                answer, widget.questionIndex);
                          });
                          _controller.clear();

                        },
                        icon: Icon(Icons.send_rounded)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
