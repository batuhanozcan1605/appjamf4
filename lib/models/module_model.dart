class Module {
  final String name;
  final List<Lesson> lessonList;

  Module({required this.name, required this.lessonList});
}

class Lesson {
  final String name;
  final int? fireId;

  Lesson({required this.name, this.fireId});
}