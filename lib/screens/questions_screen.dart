import 'package:appjamf4/widgets/questions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/question_model.dart';
import '../repository/question_repo.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({Key? key, this.questionList}) : super(key: key);
  final List<Question>? questionList;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PhysicalModel(
            color: Colors.white,
            elevation: 10,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                child: Text(
                    'ss'
                ),
              ),
            ),
          ),

          questionList != null ? Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => Questions(
                  questionList![index],
                ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: questionList!.length),
          ) : Padding(
            padding: const EdgeInsets.only(top: 100),
            child: const Center(child: Text("NULL"),),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            
          }),
    );
  }
}
