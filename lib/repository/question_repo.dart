import 'package:appjamf4/models/question_model.dart';
import 'package:appjamf4/repository/answer_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Burayı Firebase Firestore yerine kullandığımızı düşünebiliriz.
class QuestionsRepo extends ChangeNotifier {

  final List<Question> questionList = [
    Question(
        title: 'Flutter doctor hatası',
        username: 'Batuhan Özcan',
        description: 'Visual Studio Code maddesinin sonunda uyarı veriyor. Xlint hatasının sebebi bu olabilir mi?',
        plus: 3,
        timeStamp: DateTime.now().subtract(const Duration(days: 2)),
        answers: AnswerRepo().answerList1,
    ),
    Question(
        title: 'Farklı diske kayıt',
        username: 'Meryem',
        description: "Proje dosyalarını D'ye kaydetmem sorun olur mu? SDK'yı C'de kurdum.",
        plus: 0,
        timeStamp: DateTime.now().subtract(const Duration(days: 3)),
        answers: AnswerRepo().answerList2,
    ),
  ];


  void addQuestion(Question question) {
    questionList.add(question);
    notifyListeners();
  }
  void addAnswer(Answer answer, int questionIndex) {
    questionList[questionIndex].answers?.add(answer);
    notifyListeners();
  }
}


final questionsProvider = ChangeNotifierProvider((ref) => QuestionsRepo());





