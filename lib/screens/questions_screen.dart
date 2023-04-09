import 'package:appjamf4/screens/new_question.dart';
import 'package:appjamf4/widgets/questions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/question_model.dart';
import '../repository/question_repo.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({Key? key, this.questionList, required this.lessonName}) : super(key: key);
  final List<Question>? questionList;
  final String lessonName;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Color(0xFF9A8F8F),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Color(0xFF9A8F8F),),
            onPressed: () {

            },
          ),
        ],
        title: Center(
          child: GestureDetector(
            onTap: (){

            },
            child: Image.asset(
              'images/logo.png',
              height: 30,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 70,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey)
                )
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                  child: Text(
                      '$lessonName',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
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
            child: const Center(child: Text("Coming Soon!"),),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.orange,
        label: Text("+ YENİ SORU"),
          onPressed: (){

          }),
    );
  }
}
