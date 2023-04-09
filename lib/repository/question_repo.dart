import 'package:appjamf4/models/question_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Burayı Firebase Firestore yerine kullandığımızı düşünebiliriz.
class QuestionsRepo extends ChangeNotifier {

  final List<Question> questionList = [
    Question(
        title: 'Flutter doctor hatası',
        username: 'Batuhan Özcan',
        description: 'Visual Studio Code maddesinin sonunda uyarı veriyor. Hatamın sebebi bu olabilir mi?',
        plus: 3,
        comment: 2,
        timeStamp: DateTime.now().subtract(const Duration(days: 2))
    ),
    Question(
        title: 'Farklı diske kayıt',
        username: 'Meryem',
        description: "Proje dosyalarını D'ye kaydetmem sorun olur mu? SDK'yı C'de kurdum.",
        plus: 0,
        comment: 1,
        timeStamp: DateTime.now().subtract(const Duration(days: 3))
    ),
  ];

  void addQuestion(Question question) {
    questionList.add(question);
    notifyListeners();
  }
}

final questionsProvider = ChangeNotifierProvider((ref) => QuestionsRepo());





