class Question {
  final String title;
  final String description;
  final String username;
  int plus;
  final DateTime? dateTime;
  final List<Answer>? answers;

  Question({required this.title, required this.description, required this.username, required this.plus, this.dateTime, this.answers, });
}


class Answer {
  final String username;
  final String description;
  final DateTime? timeStamp;

  Answer({required this.username, required this.description, this.timeStamp});
}