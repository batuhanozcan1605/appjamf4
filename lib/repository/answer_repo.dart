import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/question_model.dart';

class AnswerRepo extends ChangeNotifier{

  final List<Answer> answerList1 = [
    Answer(username: "Lars Ulrich :)", description: "O hata eğer Windows'ta Flutter geliştirmek istiyorsan Visual Studio'yu kurman gerektiğini söylüyor."),
    Answer(username: "Lars Ulrich :)", description: "O hata eğer Windows'ta Flutter geliştirmek istiyorsan Visual Studio'yu kurman gerektiğini söylüyor."),
    Answer(username: "Lars Ulrich :)", description: "O hata eğer Windows'ta Flutter geliştirmek istiyorsan Visual Studio'yu kurman gerektiğini söylüyor."),

  ];

  final List<Answer> answerList2 = [

  ];



}

final answerProvider = ChangeNotifierProvider((ref) => AnswerRepo());