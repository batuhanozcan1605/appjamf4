import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/question_model.dart';

class AnswerRepo extends ChangeNotifier{

  final List<Answer> answerList1 = [
    Answer(username: "Lars Ulrich :)", description: "O hata eğer Windows'ta Flutter geliştirmek istiyorsan Visual Studio'yu kurman gerektiğini söylüyor."),
    Answer(username: "James Hetfield", description: "Gerekli paketi Desktop development with C++ olarak seçmeyi unutma."),
    Answer(username: "Kirk Hammett", description: "Geçici çözüm olarak bunu deneyebilirsin: flutter config --no-enable-windows-desktop"),
  ];

  final List<Answer> answerList2 = [

  ];



}

final answerProvider = ChangeNotifierProvider((ref) => AnswerRepo());