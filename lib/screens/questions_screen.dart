import 'package:appjamf4/screens/new_question.dart';
import 'package:appjamf4/widgets/questions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/question_model.dart';
import '../repository/question_repo.dart';
import '../widgets/custom_appbar.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({Key? key, this.questionList, required this.lessonName}) : super(key: key);
  final List<Question>? questionList;
  final String lessonName;

  @override
  Widget build(BuildContext context) {
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
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
               children: const [
                Flexible(
                  child: Text(
                    'Bu sayfa bakımda. Soru girmek için lütfen şu derse gidin:\n \nFlutter ile Uyguluma Geliştirme >\n      Flutter ile Uyguluma Geliştirme Eğitimleri > \nFlutter Kurulumu: Flutter SDK ',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 14,
                      color: Color(0xff707070),
                    ),
                    textAlign: TextAlign.center,
                  )
                ),
              ],
            ),),

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
