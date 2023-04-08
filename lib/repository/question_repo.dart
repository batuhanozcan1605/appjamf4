import 'package:appjamf4/models/question_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class QuestionsRepo extends ChangeNotifier {

  final List<Question> questionList = [
  Question(
  title: 'Constructor',
  username: 'Batuhan Özcan',
  description: 'Modele constructor oluştururken, this yazdığımda hata alıyorum.',
  plus: 3,
  comment: 2,
      timeStamp: DateTime.now().subtract(const Duration(days: 2))
  ),
  Question(
  title: 'Classlar',
  username: 'Meryem',
  description: 'Modele constructor oluştururken, this yazdığımda hata alıyorum.',
  plus: 0,
  comment: 1,
    timeStamp: DateTime.now().subtract(const Duration(days: 3))
  ),
  ];


}

final questionsProvider = ChangeNotifierProvider((ref) => QuestionsRepo());

class PlusCount extends StateNotifier<int> {
  PlusCount(int state) : super(state);

  void increase() {
    state++;
  }
}

final plusCountProvider = StateNotifierProvider<PlusCount, int>((ref) => PlusCount(0));



