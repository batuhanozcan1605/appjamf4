import 'package:appjamf4/models/question_model.dart';
import 'package:appjamf4/repository/question_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/widgets.dart';
import 'new_question.dart';

class OpenQuestionScreen extends ConsumerWidget {
  const OpenQuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionsRepo = ref.watch(questionsProvider);
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(screenSize.width, 50),
        child: const CustomAppBar(),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        SizedBox(
         height: 70,
         child: Container(
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey)
              )
          ),
          child: const Center(
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
              itemBuilder: (context, index) => Questions(questionsRepo.questionList[index], questionIndex: index,),
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
