import 'package:appjamf4/models/question_model.dart';

class Module {
  final String name;
  final List<Lesson> lessonList;

  Module({required this.name, required this.lessonList});
}

class Lesson {
  final String name;
  final List<Question>? questionList ;

  Lesson({required this.name, this.questionList});
}