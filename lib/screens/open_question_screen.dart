import 'package:appjamf4/models/question_model.dart';
import 'package:appjamf4/repository/question_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/widgets.dart';
import 'new_question.dart';

class OpenQuestionScreen extends ConsumerWidget {
  const OpenQuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionsRepo = ref.watch(questionsProvider);

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
                'Flutter Kurulumu: Flutter SDK',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ),
      ),

        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) => Questions(questionsRepo.questionList[index]),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: questionsRepo.questionList.length),
        )
       ]
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.orange,
          label: Text("+ YENİ SORU"),
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => NewQuestion()));
          }),
    );
  }
}
